; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_input_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_input_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { %struct.TYPE_13__*, %struct.TYPE_12__*, %struct.TYPE_11__* }
%struct.TYPE_13__ = type { i32, %struct.TYPE_10__, %struct.TYPE_9__, i32, i32 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_12__ = type { i32, i32, i32 }
%struct.TYPE_11__ = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@BUS_HOST = common dso_local global i32 0, align 4
@EV_REP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.asus_wmi*)* @asus_wmi_input_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @asus_wmi_input_init(%struct.asus_wmi* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.asus_wmi*, align 8
  %4 = alloca i32, align 4
  store %struct.asus_wmi* %0, %struct.asus_wmi** %3, align 8
  %5 = call %struct.TYPE_13__* (...) @input_allocate_device()
  %6 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %7 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %6, i32 0, i32 0
  store %struct.TYPE_13__* %5, %struct.TYPE_13__** %7, align 8
  %8 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %9 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %8, i32 0, i32 0
  %10 = load %struct.TYPE_13__*, %struct.TYPE_13__** %9, align 8
  %11 = icmp ne %struct.TYPE_13__* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @ENOMEM, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %83

15:                                               ; preds = %1
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %17 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %16, i32 0, i32 1
  %18 = load %struct.TYPE_12__*, %struct.TYPE_12__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %22 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %21, i32 0, i32 0
  %23 = load %struct.TYPE_13__*, %struct.TYPE_13__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %23, i32 0, i32 4
  store i32 %20, i32* %24, align 8
  %25 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %26 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %25, i32 0, i32 1
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %31 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %30, i32 0, i32 0
  %32 = load %struct.TYPE_13__*, %struct.TYPE_13__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %32, i32 0, i32 3
  store i32 %29, i32* %33, align 4
  %34 = load i32, i32* @BUS_HOST, align 4
  %35 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %36 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %35, i32 0, i32 0
  %37 = load %struct.TYPE_13__*, %struct.TYPE_13__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %38, i32 0, i32 0
  store i32 %34, i32* %39, align 8
  %40 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %41 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %40, i32 0, i32 2
  %42 = load %struct.TYPE_11__*, %struct.TYPE_11__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %42, i32 0, i32 0
  %44 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %45 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %44, i32 0, i32 0
  %46 = load %struct.TYPE_13__*, %struct.TYPE_13__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %46, i32 0, i32 1
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  store i32* %43, i32** %48, align 8
  %49 = load i32, i32* @EV_REP, align 4
  %50 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %51 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %50, i32 0, i32 0
  %52 = load %struct.TYPE_13__*, %struct.TYPE_13__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @set_bit(i32 %49, i32 %54)
  %56 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %57 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %56, i32 0, i32 0
  %58 = load %struct.TYPE_13__*, %struct.TYPE_13__** %57, align 8
  %59 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %60 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %59, i32 0, i32 1
  %61 = load %struct.TYPE_12__*, %struct.TYPE_12__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @sparse_keymap_setup(%struct.TYPE_13__* %58, i32 %63, i32* null)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %15
  br label %77

68:                                               ; preds = %15
  %69 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %70 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %69, i32 0, i32 0
  %71 = load %struct.TYPE_13__*, %struct.TYPE_13__** %70, align 8
  %72 = call i32 @input_register_device(%struct.TYPE_13__* %71)
  store i32 %72, i32* %4, align 4
  %73 = load i32, i32* %4, align 4
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %76

75:                                               ; preds = %68
  br label %77

76:                                               ; preds = %68
  store i32 0, i32* %2, align 4
  br label %83

77:                                               ; preds = %75, %67
  %78 = load %struct.asus_wmi*, %struct.asus_wmi** %3, align 8
  %79 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %78, i32 0, i32 0
  %80 = load %struct.TYPE_13__*, %struct.TYPE_13__** %79, align 8
  %81 = call i32 @input_free_device(%struct.TYPE_13__* %80)
  %82 = load i32, i32* %4, align 4
  store i32 %82, i32* %2, align 4
  br label %83

83:                                               ; preds = %77, %76, %12
  %84 = load i32, i32* %2, align 4
  ret i32 %84
}

declare dso_local %struct.TYPE_13__* @input_allocate_device(...) #1

declare dso_local i32 @set_bit(i32, i32) #1

declare dso_local i32 @sparse_keymap_setup(%struct.TYPE_13__*, i32, i32*) #1

declare dso_local i32 @input_register_device(%struct.TYPE_13__*) #1

declare dso_local i32 @input_free_device(%struct.TYPE_13__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
