; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_transfer_data_partial.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/rts5208/extr_rtsx_transport.c_rtsx_transfer_data_partial.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rtsx_chip = type { i32 }
%struct.scatterlist = type { i32 }

@RTSX_STAT_ABORT = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@SD_CARD = common dso_local global i32 0, align 4
@MS_CARD = common dso_local global i32 0, align 4
@XD_CARD = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rtsx_transfer_data_partial(%struct.rtsx_chip* %0, i32 %1, i8* %2, i64 %3, i32 %4, i32* %5, i32* %6, i32 %7, i32 %8) #0 {
  %10 = alloca i32, align 4
  %11 = alloca %struct.rtsx_chip*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i8*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca %struct.scatterlist*, align 8
  store %struct.rtsx_chip* %0, %struct.rtsx_chip** %11, align 8
  store i32 %1, i32* %12, align 4
  store i8* %2, i8** %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32* %5, i32** %16, align 8
  store i32* %6, i32** %17, align 8
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %22 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %23 = load i32, i32* @RTSX_STAT_ABORT, align 4
  %24 = call i64 @rtsx_chk_stat(%struct.rtsx_chip* %22, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %9
  %27 = load i32, i32* @EIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %10, align 4
  br label %76

29:                                               ; preds = %9
  %30 = load i32, i32* %15, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %46

32:                                               ; preds = %29
  %33 = load i8*, i8** %13, align 8
  %34 = bitcast i8* %33 to %struct.scatterlist*
  store %struct.scatterlist* %34, %struct.scatterlist** %21, align 8
  %35 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %36 = load i32, i32* %12, align 4
  %37 = load %struct.scatterlist*, %struct.scatterlist** %21, align 8
  %38 = load i32, i32* %15, align 4
  %39 = load i32*, i32** %16, align 8
  %40 = load i32*, i32** %17, align 8
  %41 = load i64, i64* %14, align 8
  %42 = trunc i64 %41 to i32
  %43 = load i32, i32* %18, align 4
  %44 = load i32, i32* %19, align 4
  %45 = call i32 @rtsx_transfer_sglist_adma_partial(%struct.rtsx_chip* %35, i32 %36, %struct.scatterlist* %37, i32 %38, i32* %39, i32* %40, i32 %42, i32 %43, i32 %44)
  store i32 %45, i32* %20, align 4
  br label %54

46:                                               ; preds = %29
  %47 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load i8*, i8** %13, align 8
  %50 = load i64, i64* %14, align 8
  %51 = load i32, i32* %18, align 4
  %52 = load i32, i32* %19, align 4
  %53 = call i32 @rtsx_transfer_buf(%struct.rtsx_chip* %47, i32 %48, i8* %49, i64 %50, i32 %51, i32 %52)
  store i32 %53, i32* %20, align 4
  br label %54

54:                                               ; preds = %46, %32
  %55 = load i32, i32* %20, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %74

57:                                               ; preds = %54
  %58 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %59 = call i64 @RTSX_TST_DELINK(%struct.rtsx_chip* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %73

61:                                               ; preds = %57
  %62 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %63 = call i32 @RTSX_CLR_DELINK(%struct.rtsx_chip* %62)
  %64 = load i32, i32* @SD_CARD, align 4
  %65 = load i32, i32* @MS_CARD, align 4
  %66 = or i32 %64, %65
  %67 = load i32, i32* @XD_CARD, align 4
  %68 = or i32 %66, %67
  %69 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %70 = getelementptr inbounds %struct.rtsx_chip, %struct.rtsx_chip* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 4
  %71 = load %struct.rtsx_chip*, %struct.rtsx_chip** %11, align 8
  %72 = call i32 @rtsx_reinit_cards(%struct.rtsx_chip* %71, i32 1)
  br label %73

73:                                               ; preds = %61, %57
  br label %74

74:                                               ; preds = %73, %54
  %75 = load i32, i32* %20, align 4
  store i32 %75, i32* %10, align 4
  br label %76

76:                                               ; preds = %74, %26
  %77 = load i32, i32* %10, align 4
  ret i32 %77
}

declare dso_local i64 @rtsx_chk_stat(%struct.rtsx_chip*, i32) #1

declare dso_local i32 @rtsx_transfer_sglist_adma_partial(%struct.rtsx_chip*, i32, %struct.scatterlist*, i32, i32*, i32*, i32, i32, i32) #1

declare dso_local i32 @rtsx_transfer_buf(%struct.rtsx_chip*, i32, i8*, i64, i32, i32) #1

declare dso_local i64 @RTSX_TST_DELINK(%struct.rtsx_chip*) #1

declare dso_local i32 @RTSX_CLR_DELINK(%struct.rtsx_chip*) #1

declare dso_local i32 @rtsx_reinit_cards(%struct.rtsx_chip*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
