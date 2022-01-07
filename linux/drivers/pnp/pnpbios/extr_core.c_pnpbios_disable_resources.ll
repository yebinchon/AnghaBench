; ModuleID = '/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_core.c_pnpbios_disable_resources.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pnp/pnpbios/extr_core.c_pnpbios_disable_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.pnp_dev = type { i32, i32 }
%struct.pnp_bios_node = type { i32 }

@PNPBIOS_NO_DISABLE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@node_info = common dso_local global %struct.TYPE_2__ zeroinitializer, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@PNPMODE_DYNAMIC = common dso_local global i64 0, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pnp_dev*)* @pnpbios_disable_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pnpbios_disable_resources(%struct.pnp_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pnp_dev*, align 8
  %4 = alloca %struct.pnp_bios_node*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.pnp_dev* %0, %struct.pnp_dev** %3, align 8
  %7 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %8 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %5, align 4
  %10 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %11 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @PNPBIOS_NO_DISABLE, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %1
  %17 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %18 = call i32 @pnpbios_is_dynamic(%struct.pnp_dev* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16, %1
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %60

23:                                               ; preds = %16
  %24 = load i32, i32* getelementptr inbounds (%struct.TYPE_2__, %struct.TYPE_2__* @node_info, i32 0, i32 0), align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.pnp_bios_node* @kzalloc(i32 %24, i32 %25)
  store %struct.pnp_bios_node* %26, %struct.pnp_bios_node** %4, align 8
  %27 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %28 = icmp ne %struct.pnp_bios_node* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %60

32:                                               ; preds = %23
  %33 = load i64, i64* @PNPMODE_DYNAMIC, align 8
  %34 = trunc i64 %33 to i8
  %35 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %36 = call i64 @pnp_bios_get_dev_node(i32* %5, i8 signext %34, %struct.pnp_bios_node* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %43

38:                                               ; preds = %32
  %39 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %40 = call i32 @kfree(%struct.pnp_bios_node* %39)
  %41 = load i32, i32* @ENODEV, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %60

43:                                               ; preds = %32
  %44 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %45 = call i32 @pnpbios_zero_data_stream(%struct.pnp_bios_node* %44)
  %46 = load %struct.pnp_dev*, %struct.pnp_dev** %3, align 8
  %47 = getelementptr inbounds %struct.pnp_dev, %struct.pnp_dev* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = load i64, i64* @PNPMODE_DYNAMIC, align 8
  %50 = trunc i64 %49 to i8
  %51 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %52 = call i32 @pnp_bios_set_dev_node(i32 %48, i8 signext %50, %struct.pnp_bios_node* %51)
  store i32 %52, i32* %6, align 4
  %53 = load %struct.pnp_bios_node*, %struct.pnp_bios_node** %4, align 8
  %54 = call i32 @kfree(%struct.pnp_bios_node* %53)
  %55 = load i32, i32* %6, align 4
  %56 = icmp sgt i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %43
  store i32 -1, i32* %6, align 4
  br label %58

58:                                               ; preds = %57, %43
  %59 = load i32, i32* %6, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %38, %29, %20
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

declare dso_local i32 @pnpbios_is_dynamic(%struct.pnp_dev*) #1

declare dso_local %struct.pnp_bios_node* @kzalloc(i32, i32) #1

declare dso_local i64 @pnp_bios_get_dev_node(i32*, i8 signext, %struct.pnp_bios_node*) #1

declare dso_local i32 @kfree(%struct.pnp_bios_node*) #1

declare dso_local i32 @pnpbios_zero_data_stream(%struct.pnp_bios_node*) #1

declare dso_local i32 @pnp_bios_set_dev_node(i32, i8 signext, %struct.pnp_bios_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
