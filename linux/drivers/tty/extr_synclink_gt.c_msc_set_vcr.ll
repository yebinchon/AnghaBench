; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_msc_set_vcr.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_msc_set_vcr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { i32, i32 }

@MGSL_INTERFACE_MASK = common dso_local global i32 0, align 4
@BIT5 = common dso_local global i8 0, align 1
@BIT7 = common dso_local global i8 0, align 1
@BIT6 = common dso_local global i8 0, align 1
@MGSL_INTERFACE_MSB_FIRST = common dso_local global i32 0, align 4
@BIT4 = common dso_local global i8 0, align 1
@SerialSignal_DTR = common dso_local global i32 0, align 4
@BIT3 = common dso_local global i8 0, align 1
@SerialSignal_RTS = common dso_local global i32 0, align 4
@BIT2 = common dso_local global i8 0, align 1
@MGSL_INTERFACE_LL = common dso_local global i32 0, align 4
@BIT1 = common dso_local global i8 0, align 1
@MGSL_INTERFACE_RL = common dso_local global i32 0, align 4
@BIT0 = common dso_local global i8 0, align 1
@VCR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.slgt_info*)* @msc_set_vcr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @msc_set_vcr(%struct.slgt_info* %0) #0 {
  %2 = alloca %struct.slgt_info*, align 8
  %3 = alloca i8, align 1
  store %struct.slgt_info* %0, %struct.slgt_info** %2, align 8
  store i8 0, i8* %3, align 1
  %4 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = load i32, i32* @MGSL_INTERFACE_MASK, align 4
  %8 = and i32 %6, %7
  switch i32 %8, label %36 [
    i32 130, label %9
    i32 128, label %16
    i32 129, label %29
  ]

9:                                                ; preds = %1
  %10 = load i8, i8* @BIT5, align 1
  %11 = zext i8 %10 to i32
  %12 = load i8, i8* %3, align 1
  %13 = zext i8 %12 to i32
  %14 = or i32 %13, %11
  %15 = trunc i32 %14 to i8
  store i8 %15, i8* %3, align 1
  br label %36

16:                                               ; preds = %1
  %17 = load i8, i8* @BIT7, align 1
  %18 = zext i8 %17 to i32
  %19 = load i8, i8* @BIT6, align 1
  %20 = zext i8 %19 to i32
  %21 = add nsw i32 %18, %20
  %22 = load i8, i8* @BIT5, align 1
  %23 = zext i8 %22 to i32
  %24 = add nsw i32 %21, %23
  %25 = load i8, i8* %3, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %26, %24
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %3, align 1
  br label %36

29:                                               ; preds = %1
  %30 = load i8, i8* @BIT6, align 1
  %31 = zext i8 %30 to i32
  %32 = load i8, i8* %3, align 1
  %33 = zext i8 %32 to i32
  %34 = or i32 %33, %31
  %35 = trunc i32 %34 to i8
  store i8 %35, i8* %3, align 1
  br label %36

36:                                               ; preds = %1, %29, %16, %9
  %37 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %38 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @MGSL_INTERFACE_MSB_FIRST, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %50

43:                                               ; preds = %36
  %44 = load i8, i8* @BIT4, align 1
  %45 = zext i8 %44 to i32
  %46 = load i8, i8* %3, align 1
  %47 = zext i8 %46 to i32
  %48 = or i32 %47, %45
  %49 = trunc i32 %48 to i8
  store i8 %49, i8* %3, align 1
  br label %50

50:                                               ; preds = %43, %36
  %51 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %52 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* @SerialSignal_DTR, align 4
  %55 = and i32 %53, %54
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %64

57:                                               ; preds = %50
  %58 = load i8, i8* @BIT3, align 1
  %59 = zext i8 %58 to i32
  %60 = load i8, i8* %3, align 1
  %61 = zext i8 %60 to i32
  %62 = or i32 %61, %59
  %63 = trunc i32 %62 to i8
  store i8 %63, i8* %3, align 1
  br label %64

64:                                               ; preds = %57, %50
  %65 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %66 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load i32, i32* @SerialSignal_RTS, align 4
  %69 = and i32 %67, %68
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %71, label %78

71:                                               ; preds = %64
  %72 = load i8, i8* @BIT2, align 1
  %73 = zext i8 %72 to i32
  %74 = load i8, i8* %3, align 1
  %75 = zext i8 %74 to i32
  %76 = or i32 %75, %73
  %77 = trunc i32 %76 to i8
  store i8 %77, i8* %3, align 1
  br label %78

78:                                               ; preds = %71, %64
  %79 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %80 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = load i32, i32* @MGSL_INTERFACE_LL, align 4
  %83 = and i32 %81, %82
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %92

85:                                               ; preds = %78
  %86 = load i8, i8* @BIT1, align 1
  %87 = zext i8 %86 to i32
  %88 = load i8, i8* %3, align 1
  %89 = zext i8 %88 to i32
  %90 = or i32 %89, %87
  %91 = trunc i32 %90 to i8
  store i8 %91, i8* %3, align 1
  br label %92

92:                                               ; preds = %85, %78
  %93 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %94 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %93, i32 0, i32 0
  %95 = load i32, i32* %94, align 4
  %96 = load i32, i32* @MGSL_INTERFACE_RL, align 4
  %97 = and i32 %95, %96
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %106

99:                                               ; preds = %92
  %100 = load i8, i8* @BIT0, align 1
  %101 = zext i8 %100 to i32
  %102 = load i8, i8* %3, align 1
  %103 = zext i8 %102 to i32
  %104 = or i32 %103, %101
  %105 = trunc i32 %104 to i8
  store i8 %105, i8* %3, align 1
  br label %106

106:                                              ; preds = %99, %92
  %107 = load %struct.slgt_info*, %struct.slgt_info** %2, align 8
  %108 = load i32, i32* @VCR, align 4
  %109 = load i8, i8* %3, align 1
  %110 = call i32 @wr_reg8(%struct.slgt_info* %107, i32 %108, i8 zeroext %109)
  ret void
}

declare dso_local i32 @wr_reg8(%struct.slgt_info*, i32, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
