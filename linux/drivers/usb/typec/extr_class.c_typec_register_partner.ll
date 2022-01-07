; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_partner.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_typec_register_partner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.typec_partner = type { %struct.TYPE_4__, i64, i32, i32, i32 }
%struct.TYPE_4__ = type { i32*, i32*, i32, i32 }
%struct.typec_port = type { i32 }
%struct.typec_partner_desc = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@usb_pd_id_groups = common dso_local global i32 0, align 4
@typec_class = common dso_local global i32 0, align 4
@typec_partner_dev_type = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%s-partner\00", align 1
@.str.1 = private unnamed_addr constant [33 x i8] c"failed to register partner (%d)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.typec_partner* @typec_register_partner(%struct.typec_port* %0, %struct.typec_partner_desc* %1) #0 {
  %3 = alloca %struct.typec_partner*, align 8
  %4 = alloca %struct.typec_port*, align 8
  %5 = alloca %struct.typec_partner_desc*, align 8
  %6 = alloca %struct.typec_partner*, align 8
  %7 = alloca i32, align 4
  store %struct.typec_port* %0, %struct.typec_port** %4, align 8
  store %struct.typec_partner_desc* %1, %struct.typec_partner_desc** %5, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.typec_partner* @kzalloc(i32 48, i32 %8)
  store %struct.typec_partner* %9, %struct.typec_partner** %6, align 8
  %10 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %11 = icmp ne %struct.typec_partner* %10, null
  br i1 %11, label %16, label %12

12:                                               ; preds = %2
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  %15 = call %struct.typec_partner* @ERR_PTR(i32 %14)
  store %struct.typec_partner* %15, %struct.typec_partner** %3, align 8
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %18 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %17, i32 0, i32 4
  %19 = call i32 @ida_init(i32* %18)
  %20 = load %struct.typec_partner_desc*, %struct.typec_partner_desc** %5, align 8
  %21 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %24 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %23, i32 0, i32 3
  store i32 %22, i32* %24, align 4
  %25 = load %struct.typec_partner_desc*, %struct.typec_partner_desc** %5, align 8
  %26 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %29 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %28, i32 0, i32 2
  store i32 %27, i32* %29, align 8
  %30 = load %struct.typec_partner_desc*, %struct.typec_partner_desc** %5, align 8
  %31 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %44

34:                                               ; preds = %16
  %35 = load i32, i32* @usb_pd_id_groups, align 4
  %36 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %37 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 3
  store i32 %35, i32* %38, align 4
  %39 = load %struct.typec_partner_desc*, %struct.typec_partner_desc** %5, align 8
  %40 = getelementptr inbounds %struct.typec_partner_desc, %struct.typec_partner_desc* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %43 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %42, i32 0, i32 1
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %34, %16
  %45 = load i32, i32* @typec_class, align 4
  %46 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %47 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 2
  store i32 %45, i32* %48, align 8
  %49 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %50 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %49, i32 0, i32 0
  %51 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %52 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 1
  store i32* %50, i32** %53, align 8
  %54 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %55 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* @typec_partner_dev_type, i32** %56, align 8
  %57 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %58 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %57, i32 0, i32 0
  %59 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %60 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %59, i32 0, i32 0
  %61 = call i32 @dev_name(i32* %60)
  %62 = call i32 @dev_set_name(%struct.TYPE_4__* %58, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %61)
  %63 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %64 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %63, i32 0, i32 0
  %65 = call i32 @device_register(%struct.TYPE_4__* %64)
  store i32 %65, i32* %7, align 4
  %66 = load i32, i32* %7, align 4
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %78

68:                                               ; preds = %44
  %69 = load %struct.typec_port*, %struct.typec_port** %4, align 8
  %70 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %69, i32 0, i32 0
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @dev_err(i32* %70, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str.1, i64 0, i64 0), i32 %71)
  %73 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  %74 = getelementptr inbounds %struct.typec_partner, %struct.typec_partner* %73, i32 0, i32 0
  %75 = call i32 @put_device(%struct.TYPE_4__* %74)
  %76 = load i32, i32* %7, align 4
  %77 = call %struct.typec_partner* @ERR_PTR(i32 %76)
  store %struct.typec_partner* %77, %struct.typec_partner** %3, align 8
  br label %80

78:                                               ; preds = %44
  %79 = load %struct.typec_partner*, %struct.typec_partner** %6, align 8
  store %struct.typec_partner* %79, %struct.typec_partner** %3, align 8
  br label %80

80:                                               ; preds = %78, %68, %12
  %81 = load %struct.typec_partner*, %struct.typec_partner** %3, align 8
  ret %struct.typec_partner* %81
}

declare dso_local %struct.typec_partner* @kzalloc(i32, i32) #1

declare dso_local %struct.typec_partner* @ERR_PTR(i32) #1

declare dso_local i32 @ida_init(i32*) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_4__*, i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_register(%struct.TYPE_4__*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @put_device(%struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
