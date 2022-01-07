; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_vconn_source_store.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/typec/extr_class.c_vconn_source_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.device_attribute = type { i32 }
%struct.typec_port = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.TYPE_2__*, i32)*, i32 }

@.str = private unnamed_addr constant [42 x i8] c"VCONN swap depends on USB Power Delivery\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"VCONN swapping not supported\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.device_attribute*, i8*, i64)* @vconn_source_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vconn_source_store(%struct.device* %0, %struct.device_attribute* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.device*, align 8
  %7 = alloca %struct.device_attribute*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.typec_port*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %6, align 8
  store %struct.device_attribute* %1, %struct.device_attribute** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %13 = load %struct.device*, %struct.device** %6, align 8
  %14 = call %struct.typec_port* @to_typec_port(%struct.device* %13)
  store %struct.typec_port* %14, %struct.typec_port** %10, align 8
  %15 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %16 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %15, i32 0, i32 0
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %26, label %21

21:                                               ; preds = %4
  %22 = load %struct.device*, %struct.device** %6, align 8
  %23 = call i32 @dev_dbg(%struct.device* %22, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %5, align 4
  br label %63

26:                                               ; preds = %4
  %27 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %28 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %30, align 8
  %32 = icmp ne i32 (%struct.TYPE_2__*, i32)* %31, null
  br i1 %32, label %38, label %33

33:                                               ; preds = %26
  %34 = load %struct.device*, %struct.device** %6, align 8
  %35 = call i32 @dev_dbg(%struct.device* %34, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0))
  %36 = load i32, i32* @EOPNOTSUPP, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %63

38:                                               ; preds = %26
  %39 = load i8*, i8** %8, align 8
  %40 = call i32 @kstrtobool(i8* %39, i32* %11)
  store i32 %40, i32* %12, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %38
  %44 = load i32, i32* %12, align 4
  store i32 %44, i32* %5, align 4
  br label %63

45:                                               ; preds = %38
  %46 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %47 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %46, i32 0, i32 0
  %48 = load %struct.TYPE_2__*, %struct.TYPE_2__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_2__*, i32)*, i32 (%struct.TYPE_2__*, i32)** %49, align 8
  %51 = load %struct.typec_port*, %struct.typec_port** %10, align 8
  %52 = getelementptr inbounds %struct.typec_port, %struct.typec_port* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = call i32 %50(%struct.TYPE_2__* %53, i32 %54)
  store i32 %55, i32* %12, align 4
  %56 = load i32, i32* %12, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %45
  %59 = load i32, i32* %12, align 4
  store i32 %59, i32* %5, align 4
  br label %63

60:                                               ; preds = %45
  %61 = load i64, i64* %9, align 8
  %62 = trunc i64 %61 to i32
  store i32 %62, i32* %5, align 4
  br label %63

63:                                               ; preds = %60, %58, %43, %33, %21
  %64 = load i32, i32* %5, align 4
  ret i32 %64
}

declare dso_local %struct.typec_port* @to_typec_port(%struct.device*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @kstrtobool(i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
