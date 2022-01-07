; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_debi_transfer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/comedi/drivers/extr_s626.c_s626_debi_transfer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.comedi_device = type { i32, i64 }

@s626_debi_transfer.timeout = internal constant i32 10000, align 4
@S626_MC2_UPLD_DEBI = common dso_local global i32 0, align 4
@S626_P_MC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [50 x i8] c"Timeout while uploading to DEBI control register\0A\00", align 1
@S626_P_PSR = common dso_local global i64 0, align 8
@S626_PSR_DEBI_S = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"DEBI transfer timeout\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.comedi_device*)* @s626_debi_transfer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s626_debi_transfer(%struct.comedi_device* %0) #0 {
  %2 = alloca %struct.comedi_device*, align 8
  %3 = alloca i32, align 4
  store %struct.comedi_device* %0, %struct.comedi_device** %2, align 8
  %4 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %5 = load i32, i32* @S626_MC2_UPLD_DEBI, align 4
  %6 = load i32, i32* @S626_P_MC2, align 4
  %7 = call i32 @s626_mc_enable(%struct.comedi_device* %4, i32 %5, i32 %6)
  store i32 0, i32* %3, align 4
  br label %8

8:                                                ; preds = %20, %1
  %9 = load i32, i32* %3, align 4
  %10 = icmp slt i32 %9, 10000
  br i1 %10, label %11, label %23

11:                                               ; preds = %8
  %12 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %13 = load i32, i32* @S626_MC2_UPLD_DEBI, align 4
  %14 = load i32, i32* @S626_P_MC2, align 4
  %15 = call i64 @s626_mc_test(%struct.comedi_device* %12, i32 %13, i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %23

18:                                               ; preds = %11
  %19 = call i32 @udelay(i32 1)
  br label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %3, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %3, align 4
  br label %8

23:                                               ; preds = %17, %8
  %24 = load i32, i32* %3, align 4
  %25 = icmp eq i32 %24, 10000
  br i1 %25, label %26, label %31

26:                                               ; preds = %23
  %27 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %28 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([50 x i8], [50 x i8]* @.str, i64 0, i64 0))
  br label %31

31:                                               ; preds = %26, %23
  store i32 0, i32* %3, align 4
  br label %32

32:                                               ; preds = %48, %31
  %33 = load i32, i32* %3, align 4
  %34 = icmp slt i32 %33, 10000
  br i1 %34, label %35, label %51

35:                                               ; preds = %32
  %36 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %37 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %36, i32 0, i32 1
  %38 = load i64, i64* %37, align 8
  %39 = load i64, i64* @S626_P_PSR, align 8
  %40 = add nsw i64 %38, %39
  %41 = call i32 @readl(i64 %40)
  %42 = load i32, i32* @S626_PSR_DEBI_S, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %35
  br label %51

46:                                               ; preds = %35
  %47 = call i32 @udelay(i32 1)
  br label %48

48:                                               ; preds = %46
  %49 = load i32, i32* %3, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %3, align 4
  br label %32

51:                                               ; preds = %45, %32
  %52 = load i32, i32* %3, align 4
  %53 = icmp eq i32 %52, 10000
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.comedi_device*, %struct.comedi_device** %2, align 8
  %56 = getelementptr inbounds %struct.comedi_device, %struct.comedi_device* %55, i32 0, i32 0
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @dev_err(i32 %57, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %59

59:                                               ; preds = %54, %51
  ret void
}

declare dso_local i32 @s626_mc_enable(%struct.comedi_device*, i32, i32) #1

declare dso_local i64 @s626_mc_test(%struct.comedi_device*, i32, i32) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @readl(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
