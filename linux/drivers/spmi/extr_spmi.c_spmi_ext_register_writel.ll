; ModuleID = '/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_ext_register_writel.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/spmi/extr_spmi.c_spmi_ext_register_writel.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.spmi_device = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@SPMI_CMD_EXT_WRITEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @spmi_ext_register_writel(%struct.spmi_device* %0, i32 %1, i32* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.spmi_device*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i64, align 8
  store %struct.spmi_device* %0, %struct.spmi_device** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i64 %3, i64* %9, align 8
  %10 = load i64, i64* %9, align 8
  %11 = icmp eq i64 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i64, i64* %9, align 8
  %14 = icmp ugt i64 %13, 8
  br i1 %14, label %15, label %18

15:                                               ; preds = %12, %4
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  br label %30

18:                                               ; preds = %12
  %19 = load %struct.spmi_device*, %struct.spmi_device** %6, align 8
  %20 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @SPMI_CMD_EXT_WRITEL, align 4
  %23 = load %struct.spmi_device*, %struct.spmi_device** %6, align 8
  %24 = getelementptr inbounds %struct.spmi_device, %struct.spmi_device* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = load i32, i32* %7, align 4
  %27 = load i32*, i32** %8, align 8
  %28 = load i64, i64* %9, align 8
  %29 = call i32 @spmi_write_cmd(i32 %21, i32 %22, i32 %25, i32 %26, i32* %27, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %18, %15
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

declare dso_local i32 @spmi_write_cmd(i32, i32, i32, i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
