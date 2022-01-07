; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/greybus/extr_hid.c_gb_hid_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gb_hid = type { %struct.TYPE_8__*, %struct.TYPE_5__, %struct.hid_device* }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.hid_device = type { i32, i32, i32, %struct.TYPE_6__, i32*, %struct.gb_hid*, i32, i8* }
%struct.TYPE_6__ = type { i32* }

@gb_hid_ll_driver = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"%s %04X:%04X\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gb_hid*)* @gb_hid_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gb_hid_init(%struct.gb_hid* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.gb_hid*, align 8
  %4 = alloca %struct.hid_device*, align 8
  %5 = alloca i32, align 4
  store %struct.gb_hid* %0, %struct.gb_hid** %3, align 8
  %6 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %7 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %6, i32 0, i32 2
  %8 = load %struct.hid_device*, %struct.hid_device** %7, align 8
  store %struct.hid_device* %8, %struct.hid_device** %4, align 8
  %9 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %10 = call i32 @gb_hid_get_desc(%struct.gb_hid* %9)
  store i32 %10, i32* %5, align 4
  %11 = load i32, i32* %5, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %2, align 4
  br label %76

15:                                               ; preds = %1
  %16 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %17 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %17, i32 0, i32 3
  %19 = load i32, i32* %18, align 4
  %20 = call i8* @le16_to_cpu(i32 %19)
  %21 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %22 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %21, i32 0, i32 7
  store i8* %20, i8** %22, align 8
  %23 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %24 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 2
  %26 = load i32, i32* %25, align 8
  %27 = call i8* @le16_to_cpu(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  %29 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %30 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %29, i32 0, i32 0
  store i32 %28, i32* %30, align 8
  %31 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %32 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @le16_to_cpu(i32 %34)
  %36 = ptrtoint i8* %35 to i32
  %37 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %38 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %37, i32 0, i32 1
  store i32 %36, i32* %38, align 4
  %39 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %40 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %44 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %43, i32 0, i32 6
  store i32 %42, i32* %44, align 8
  %45 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %46 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %47 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %46, i32 0, i32 5
  store %struct.gb_hid* %45, %struct.gb_hid** %47, align 8
  %48 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %49 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %48, i32 0, i32 4
  store i32* @gb_hid_ll_driver, i32** %49, align 8
  %50 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %51 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %50, i32 0, i32 0
  %52 = load %struct.TYPE_8__*, %struct.TYPE_8__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %52, i32 0, i32 0
  %54 = load %struct.TYPE_7__*, %struct.TYPE_7__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  %56 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %57 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %56, i32 0, i32 3
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 0
  store i32* %55, i32** %58, align 8
  %59 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %60 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %59, i32 0, i32 2
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.gb_hid*, %struct.gb_hid** %3, align 8
  %63 = getelementptr inbounds %struct.gb_hid, %struct.gb_hid* %62, i32 0, i32 0
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = call i8* @dev_name(i32* %67)
  %69 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %70 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load %struct.hid_device*, %struct.hid_device** %4, align 8
  %73 = getelementptr inbounds %struct.hid_device, %struct.hid_device* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @snprintf(i32 %61, i32 4, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* %68, i32 %71, i32 %74)
  store i32 0, i32* %2, align 4
  br label %76

76:                                               ; preds = %15, %13
  %77 = load i32, i32* %2, align 4
  ret i32 %77
}

declare dso_local i32 @gb_hid_get_desc(%struct.gb_hid*) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i32 @snprintf(i32, i32, i8*, i8*, i32, i32) #1

declare dso_local i8* @dev_name(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
