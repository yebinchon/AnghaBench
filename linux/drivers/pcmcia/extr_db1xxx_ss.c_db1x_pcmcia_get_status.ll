; ModuleID = '/home/carl/AnghaBench/linux/drivers/pcmcia/extr_db1xxx_ss.c_db1x_pcmcia_get_status.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pcmcia/extr_db1xxx_ss.c_db1x_pcmcia_get_status.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcmcia_socket = type { i32 }
%struct.db1x_pcmcia_sock = type { i64, i32 }

@SS_DETECT = common dso_local global i32 0, align 4
@BCSR_PCMCIA = common dso_local global i32 0, align 4
@BCSR_STATUS = common dso_local global i32 0, align 4
@BOARD_TYPE_PB1100 = common dso_local global i64 0, align 8
@SS_3VCARD = common dso_local global i32 0, align 4
@SS_XVCARD = common dso_local global i32 0, align 4
@SS_POWERON = common dso_local global i32 0, align 4
@BOARD_TYPE_DB1300 = common dso_local global i64 0, align 8
@SS_READY = common dso_local global i32 0, align 4
@SS_RESET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcmcia_socket*, i32*)* @db1x_pcmcia_get_status to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @db1x_pcmcia_get_status(%struct.pcmcia_socket* %0, i32* %1) #0 {
  %3 = alloca %struct.pcmcia_socket*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.db1x_pcmcia_sock*, align 8
  %6 = alloca i16, align 2
  %7 = alloca i16, align 2
  %8 = alloca i32, align 4
  store %struct.pcmcia_socket* %0, %struct.pcmcia_socket** %3, align 8
  store i32* %1, i32** %4, align 8
  %9 = load %struct.pcmcia_socket*, %struct.pcmcia_socket** %3, align 8
  %10 = call %struct.db1x_pcmcia_sock* @to_db1x_socket(%struct.pcmcia_socket* %9)
  store %struct.db1x_pcmcia_sock* %10, %struct.db1x_pcmcia_sock** %5, align 8
  %11 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %12 = call i64 @db1x_card_inserted(%struct.db1x_pcmcia_sock* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %2
  %15 = load i32, i32* @SS_DETECT, align 4
  br label %17

16:                                               ; preds = %2
  br label %17

17:                                               ; preds = %16, %14
  %18 = phi i32 [ %15, %14 ], [ 0, %16 ]
  store i32 %18, i32* %8, align 4
  %19 = load i32, i32* @BCSR_PCMCIA, align 4
  %20 = call zeroext i16 @bcsr_read(i32 %19)
  store i16 %20, i16* %6, align 2
  %21 = load i32, i32* @BCSR_STATUS, align 4
  %22 = call zeroext i16 @bcsr_read(i32 %21)
  store i16 %22, i16* %7, align 2
  %23 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %24 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @BOARD_TYPE_PB1100, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load i16, i16* %7, align 2
  %30 = zext i16 %29 to i32
  %31 = ashr i32 %30, 4
  %32 = trunc i32 %31 to i16
  store i16 %32, i16* %7, align 2
  br label %33

33:                                               ; preds = %28, %17
  %34 = load i16, i16* %7, align 2
  %35 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %36 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @GET_VS(i16 zeroext %34, i32 %37)
  switch i32 %38, label %44 [
    i32 0, label %39
    i32 2, label %39
    i32 3, label %43
  ]

39:                                               ; preds = %33, %33
  %40 = load i32, i32* @SS_3VCARD, align 4
  %41 = load i32, i32* %8, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %8, align 4
  br label %43

43:                                               ; preds = %33, %39
  br label %48

44:                                               ; preds = %33
  %45 = load i32, i32* @SS_XVCARD, align 4
  %46 = load i32, i32* %8, align 4
  %47 = or i32 %46, %45
  store i32 %47, i32* %8, align 4
  br label %48

48:                                               ; preds = %44, %43
  %49 = load i16, i16* %6, align 2
  %50 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %51 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 8
  %53 = call i64 @GET_VCC(i16 zeroext %49, i32 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %48
  %56 = load i32, i32* @SS_POWERON, align 4
  br label %58

57:                                               ; preds = %48
  br label %58

58:                                               ; preds = %57, %55
  %59 = phi i32 [ %56, %55 ], [ 0, %57 ]
  %60 = load i32, i32* %8, align 4
  %61 = or i32 %60, %59
  store i32 %61, i32* %8, align 4
  %62 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %63 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load i64, i64* @BOARD_TYPE_DB1300, align 8
  %66 = icmp eq i64 %64, %65
  br i1 %66, label %67, label %78

67:                                               ; preds = %58
  %68 = load i32, i32* %8, align 4
  %69 = load i32, i32* @SS_DETECT, align 4
  %70 = and i32 %68, %69
  %71 = icmp ne i32 %70, 0
  br i1 %71, label %72, label %78

72:                                               ; preds = %67
  %73 = load i32, i32* @SS_POWERON, align 4
  %74 = load i32, i32* @SS_3VCARD, align 4
  %75 = or i32 %73, %74
  %76 = load i32, i32* @SS_DETECT, align 4
  %77 = or i32 %75, %76
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %72, %67, %58
  %79 = load i16, i16* %6, align 2
  %80 = load %struct.db1x_pcmcia_sock*, %struct.db1x_pcmcia_sock** %5, align 8
  %81 = getelementptr inbounds %struct.db1x_pcmcia_sock, %struct.db1x_pcmcia_sock* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i64 @GET_RESET(i16 zeroext %79, i32 %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %78
  %86 = load i32, i32* @SS_READY, align 4
  br label %89

87:                                               ; preds = %78
  %88 = load i32, i32* @SS_RESET, align 4
  br label %89

89:                                               ; preds = %87, %85
  %90 = phi i32 [ %86, %85 ], [ %88, %87 ]
  %91 = load i32, i32* %8, align 4
  %92 = or i32 %91, %90
  store i32 %92, i32* %8, align 4
  %93 = load i32, i32* %8, align 4
  %94 = load i32*, i32** %4, align 8
  store i32 %93, i32* %94, align 4
  ret i32 0
}

declare dso_local %struct.db1x_pcmcia_sock* @to_db1x_socket(%struct.pcmcia_socket*) #1

declare dso_local i64 @db1x_card_inserted(%struct.db1x_pcmcia_sock*) #1

declare dso_local zeroext i16 @bcsr_read(i32) #1

declare dso_local i32 @GET_VS(i16 zeroext, i32) #1

declare dso_local i64 @GET_VCC(i16 zeroext, i32) #1

declare dso_local i64 @GET_RESET(i16 zeroext, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
