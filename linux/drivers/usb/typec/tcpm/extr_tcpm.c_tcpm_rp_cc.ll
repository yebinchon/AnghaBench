; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_rp_cc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/tcpm/extr_tcpm.c_tcpm_rp_cc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcpm_port = type { i32, i32* }

@PDO_TYPE_FIXED = common dso_local global i64 0, align 8
@TYPEC_CC_RP_3_0 = common dso_local global i32 0, align 4
@TYPEC_CC_RP_1_5 = common dso_local global i32 0, align 4
@TYPEC_CC_RP_DEF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.tcpm_port*)* @tcpm_rp_cc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcpm_rp_cc(%struct.tcpm_port* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.tcpm_port*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.tcpm_port* %0, %struct.tcpm_port** %3, align 8
  %9 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %10 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %9, i32 0, i32 1
  %11 = load i32*, i32** %10, align 8
  store i32* %11, i32** %4, align 8
  %12 = load %struct.tcpm_port*, %struct.tcpm_port** %3, align 8
  %13 = getelementptr inbounds %struct.tcpm_port, %struct.tcpm_port* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %15

15:                                               ; preds = %49, %1
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %16, %17
  br i1 %18, label %19, label %52

19:                                               ; preds = %15
  %20 = load i32*, i32** %4, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %7, align 4
  %25 = load i32, i32* %7, align 4
  %26 = call i64 @pdo_type(i32 %25)
  %27 = load i64, i64* @PDO_TYPE_FIXED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %48

29:                                               ; preds = %19
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @pdo_fixed_voltage(i32 %30)
  %32 = icmp eq i32 %31, 5000
  br i1 %32, label %33, label %48

33:                                               ; preds = %29
  %34 = load i32, i32* %7, align 4
  %35 = call i32 @pdo_max_current(i32 %34)
  store i32 %35, i32* %8, align 4
  %36 = load i32, i32* %8, align 4
  %37 = icmp uge i32 %36, 3000
  br i1 %37, label %38, label %40

38:                                               ; preds = %33
  %39 = load i32, i32* @TYPEC_CC_RP_3_0, align 4
  store i32 %39, i32* %2, align 4
  br label %54

40:                                               ; preds = %33
  %41 = load i32, i32* %8, align 4
  %42 = icmp uge i32 %41, 1500
  br i1 %42, label %43, label %45

43:                                               ; preds = %40
  %44 = load i32, i32* @TYPEC_CC_RP_1_5, align 4
  store i32 %44, i32* %2, align 4
  br label %54

45:                                               ; preds = %40
  br label %46

46:                                               ; preds = %45
  %47 = load i32, i32* @TYPEC_CC_RP_DEF, align 4
  store i32 %47, i32* %2, align 4
  br label %54

48:                                               ; preds = %29, %19
  br label %49

49:                                               ; preds = %48
  %50 = load i32, i32* %6, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %6, align 4
  br label %15

52:                                               ; preds = %15
  %53 = load i32, i32* @TYPEC_CC_RP_DEF, align 4
  store i32 %53, i32* %2, align 4
  br label %54

54:                                               ; preds = %52, %46, %43, %38
  %55 = load i32, i32* %2, align 4
  ret i32 %55
}

declare dso_local i64 @pdo_type(i32) #1

declare dso_local i32 @pdo_fixed_voltage(i32) #1

declare dso_local i32 @pdo_max_current(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
