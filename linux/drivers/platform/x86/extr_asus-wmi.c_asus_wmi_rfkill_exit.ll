; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_rfkill_exit.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_asus-wmi.c_asus_wmi_rfkill_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.asus_wmi = type { %struct.TYPE_15__, %struct.TYPE_14__, %struct.TYPE_13__, %struct.TYPE_12__, %struct.TYPE_11__, i64, %struct.TYPE_16__, %struct.TYPE_10__, %struct.TYPE_9__* }
%struct.TYPE_15__ = type { i32* }
%struct.TYPE_14__ = type { i32* }
%struct.TYPE_13__ = type { i32* }
%struct.TYPE_12__ = type { i32* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_16__ = type { i64 }
%struct.TYPE_10__ = type { i32* }
%struct.TYPE_9__ = type { i64 }

@.str = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P5\00", align 1
@.str.1 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P6\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"\\_SB.PCI0.P0P7\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.asus_wmi*)* @asus_wmi_rfkill_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @asus_wmi_rfkill_exit(%struct.asus_wmi* %0) #0 {
  %2 = alloca %struct.asus_wmi*, align 8
  store %struct.asus_wmi* %0, %struct.asus_wmi** %2, align 8
  %3 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %4 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %3, i32 0, i32 8
  %5 = load %struct.TYPE_9__*, %struct.TYPE_9__** %4, align 8
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %9, label %13

9:                                                ; preds = %1
  %10 = call i64 (...) @ashs_present()
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %9
  br label %161

13:                                               ; preds = %9, %1
  %14 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %15 = call i32 @asus_unregister_rfkill_notifier(%struct.asus_wmi* %14, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0))
  %16 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %17 = call i32 @asus_unregister_rfkill_notifier(%struct.asus_wmi* %16, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.1, i64 0, i64 0))
  %18 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %19 = call i32 @asus_unregister_rfkill_notifier(%struct.asus_wmi* %18, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i64 0, i64 0))
  %20 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %21 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %20, i32 0, i32 7
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %25, label %39

25:                                               ; preds = %13
  %26 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %27 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %26, i32 0, i32 7
  %28 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = call i32 @rfkill_unregister(i32* %29)
  %31 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %32 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %31, i32 0, i32 7
  %33 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %32, i32 0, i32 0
  %34 = load i32*, i32** %33, align 8
  %35 = call i32 @rfkill_destroy(i32* %34)
  %36 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %37 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %36, i32 0, i32 7
  %38 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %37, i32 0, i32 0
  store i32* null, i32** %38, align 8
  br label %39

39:                                               ; preds = %25, %13
  %40 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %41 = call i32 @asus_rfkill_hotplug(%struct.asus_wmi* %40)
  %42 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %43 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %42, i32 0, i32 6
  %44 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %39
  %48 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %49 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %48, i32 0, i32 6
  %50 = call i32 @pci_hp_deregister(%struct.TYPE_16__* %49)
  br label %51

51:                                               ; preds = %47, %39
  %52 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %53 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %52, i32 0, i32 5
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %61

56:                                               ; preds = %51
  %57 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %58 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @destroy_workqueue(i64 %59)
  br label %61

61:                                               ; preds = %56, %51
  %62 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %63 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %62, i32 0, i32 4
  %64 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %63, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ne i32* %65, null
  br i1 %66, label %67, label %81

67:                                               ; preds = %61
  %68 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %69 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @rfkill_unregister(i32* %71)
  %73 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %74 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %74, i32 0, i32 0
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @rfkill_destroy(i32* %76)
  %78 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %79 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %78, i32 0, i32 4
  %80 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %79, i32 0, i32 0
  store i32* null, i32** %80, align 8
  br label %81

81:                                               ; preds = %67, %61
  %82 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %83 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 0
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %85, null
  br i1 %86, label %87, label %101

87:                                               ; preds = %81
  %88 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %89 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %88, i32 0, i32 3
  %90 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @rfkill_unregister(i32* %91)
  %93 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %94 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %93, i32 0, i32 3
  %95 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %94, i32 0, i32 0
  %96 = load i32*, i32** %95, align 8
  %97 = call i32 @rfkill_destroy(i32* %96)
  %98 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %99 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %98, i32 0, i32 3
  %100 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %99, i32 0, i32 0
  store i32* null, i32** %100, align 8
  br label %101

101:                                              ; preds = %87, %81
  %102 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %103 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %121

107:                                              ; preds = %101
  %108 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %109 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %109, i32 0, i32 0
  %111 = load i32*, i32** %110, align 8
  %112 = call i32 @rfkill_unregister(i32* %111)
  %113 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %114 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %114, i32 0, i32 0
  %116 = load i32*, i32** %115, align 8
  %117 = call i32 @rfkill_destroy(i32* %116)
  %118 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %119 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32* null, i32** %120, align 8
  br label %121

121:                                              ; preds = %107, %101
  %122 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %123 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %122, i32 0, i32 1
  %124 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %123, i32 0, i32 0
  %125 = load i32*, i32** %124, align 8
  %126 = icmp ne i32* %125, null
  br i1 %126, label %127, label %141

127:                                              ; preds = %121
  %128 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %129 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %128, i32 0, i32 1
  %130 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %129, i32 0, i32 0
  %131 = load i32*, i32** %130, align 8
  %132 = call i32 @rfkill_unregister(i32* %131)
  %133 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %134 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = call i32 @rfkill_destroy(i32* %136)
  %138 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %139 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %138, i32 0, i32 1
  %140 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %139, i32 0, i32 0
  store i32* null, i32** %140, align 8
  br label %141

141:                                              ; preds = %127, %121
  %142 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %143 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %143, i32 0, i32 0
  %145 = load i32*, i32** %144, align 8
  %146 = icmp ne i32* %145, null
  br i1 %146, label %147, label %161

147:                                              ; preds = %141
  %148 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %149 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %148, i32 0, i32 0
  %150 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %149, i32 0, i32 0
  %151 = load i32*, i32** %150, align 8
  %152 = call i32 @rfkill_unregister(i32* %151)
  %153 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %154 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %153, i32 0, i32 0
  %155 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %154, i32 0, i32 0
  %156 = load i32*, i32** %155, align 8
  %157 = call i32 @rfkill_destroy(i32* %156)
  %158 = load %struct.asus_wmi*, %struct.asus_wmi** %2, align 8
  %159 = getelementptr inbounds %struct.asus_wmi, %struct.asus_wmi* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %159, i32 0, i32 0
  store i32* null, i32** %160, align 8
  br label %161

161:                                              ; preds = %12, %147, %141
  ret void
}

declare dso_local i64 @ashs_present(...) #1

declare dso_local i32 @asus_unregister_rfkill_notifier(%struct.asus_wmi*, i8*) #1

declare dso_local i32 @rfkill_unregister(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

declare dso_local i32 @asus_rfkill_hotplug(%struct.asus_wmi*) #1

declare dso_local i32 @pci_hp_deregister(%struct.TYPE_16__*) #1

declare dso_local i32 @destroy_workqueue(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
