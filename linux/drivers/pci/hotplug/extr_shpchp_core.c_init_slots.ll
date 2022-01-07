; ModuleID = '/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_core.c_init_slots.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/pci/hotplug/extr_shpchp_core.c_init_slots.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.controller = type { i32, i32, i32, i32, %struct.TYPE_4__*, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.slot = type { i32, i32, i32, i32, i32, i32, i32, i32, i64, i32, i32, i32, i32, %struct.controller*, %struct.hotplug_slot }
%struct.hotplug_slot = type { i32* }

@SLOT_NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [10 x i8] c"shpchp-%d\00", align 1
@shpchp_queue_pushbutton_work = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [3 x i8] c"%d\00", align 1
@shpchp_hotplug_slot_ops = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [83 x i8] c"Registering domain:bus:dev=%04x:%02x:%02x hp_slot=%x sun=%x slot_device_offset=%x\0A\00", align 1
@.str.3 = private unnamed_addr constant [38 x i8] c"pci_hp_register failed with error %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.controller*)* @init_slots to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_slots(%struct.controller* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.controller*, align 8
  %4 = alloca %struct.slot*, align 8
  %5 = alloca %struct.hotplug_slot*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.controller* %0, %struct.controller** %3, align 8
  %11 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %12 = zext i32 %11 to i64
  %13 = call i8* @llvm.stacksave()
  store i8* %13, i8** %6, align 8
  %14 = alloca i8, i64 %12, align 16
  store i64 %12, i64* %7, align 8
  store i32 0, i32* %9, align 4
  br label %15

15:                                               ; preds = %160, %1
  %16 = load i32, i32* %9, align 4
  %17 = load %struct.controller*, %struct.controller** %3, align 8
  %18 = getelementptr inbounds %struct.controller, %struct.controller* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %163

21:                                               ; preds = %15
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.slot* @kzalloc(i32 72, i32 %22)
  store %struct.slot* %23, %struct.slot** %4, align 8
  %24 = load %struct.slot*, %struct.slot** %4, align 8
  %25 = icmp ne %struct.slot* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %8, align 4
  br label %172

29:                                               ; preds = %21
  %30 = load %struct.slot*, %struct.slot** %4, align 8
  %31 = getelementptr inbounds %struct.slot, %struct.slot* %30, i32 0, i32 14
  store %struct.hotplug_slot* %31, %struct.hotplug_slot** %5, align 8
  %32 = load i32, i32* %9, align 4
  %33 = load %struct.slot*, %struct.slot** %4, align 8
  %34 = getelementptr inbounds %struct.slot, %struct.slot* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.controller*, %struct.controller** %3, align 8
  %36 = load %struct.slot*, %struct.slot** %4, align 8
  %37 = getelementptr inbounds %struct.slot, %struct.slot* %36, i32 0, i32 13
  store %struct.controller* %35, %struct.controller** %37, align 8
  %38 = load %struct.controller*, %struct.controller** %3, align 8
  %39 = getelementptr inbounds %struct.controller, %struct.controller* %38, i32 0, i32 4
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.slot*, %struct.slot** %4, align 8
  %46 = getelementptr inbounds %struct.slot, %struct.slot* %45, i32 0, i32 9
  store i32 %44, i32* %46, align 8
  %47 = load %struct.controller*, %struct.controller** %3, align 8
  %48 = getelementptr inbounds %struct.controller, %struct.controller* %47, i32 0, i32 5
  %49 = load i32, i32* %48, align 8
  %50 = load i32, i32* %9, align 4
  %51 = add nsw i32 %49, %50
  %52 = sext i32 %51 to i64
  %53 = load %struct.slot*, %struct.slot** %4, align 8
  %54 = getelementptr inbounds %struct.slot, %struct.slot* %53, i32 0, i32 8
  store i64 %52, i64* %54, align 8
  %55 = load %struct.controller*, %struct.controller** %3, align 8
  %56 = getelementptr inbounds %struct.controller, %struct.controller* %55, i32 0, i32 6
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.slot*, %struct.slot** %4, align 8
  %59 = getelementptr inbounds %struct.slot, %struct.slot* %58, i32 0, i32 12
  store i32 %57, i32* %59, align 4
  %60 = load %struct.controller*, %struct.controller** %3, align 8
  %61 = getelementptr inbounds %struct.controller, %struct.controller* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.controller*, %struct.controller** %3, align 8
  %64 = getelementptr inbounds %struct.controller, %struct.controller* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* %9, align 4
  %67 = mul nsw i32 %65, %66
  %68 = add nsw i32 %62, %67
  %69 = load %struct.slot*, %struct.slot** %4, align 8
  %70 = getelementptr inbounds %struct.slot, %struct.slot* %69, i32 0, i32 1
  store i32 %68, i32* %70, align 4
  %71 = load %struct.slot*, %struct.slot** %4, align 8
  %72 = getelementptr inbounds %struct.slot, %struct.slot* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = call i32 @alloc_workqueue(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 0, i32 0, i32 %73)
  %75 = load %struct.slot*, %struct.slot** %4, align 8
  %76 = getelementptr inbounds %struct.slot, %struct.slot* %75, i32 0, i32 2
  store i32 %74, i32* %76, align 8
  %77 = load %struct.slot*, %struct.slot** %4, align 8
  %78 = getelementptr inbounds %struct.slot, %struct.slot* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %29
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %8, align 4
  br label %169

84:                                               ; preds = %29
  %85 = load %struct.slot*, %struct.slot** %4, align 8
  %86 = getelementptr inbounds %struct.slot, %struct.slot* %85, i32 0, i32 11
  %87 = call i32 @mutex_init(i32* %86)
  %88 = load %struct.slot*, %struct.slot** %4, align 8
  %89 = getelementptr inbounds %struct.slot, %struct.slot* %88, i32 0, i32 10
  %90 = load i32, i32* @shpchp_queue_pushbutton_work, align 4
  %91 = call i32 @INIT_DELAYED_WORK(i32* %89, i32 %90)
  %92 = load i32, i32* @SLOT_NAME_SIZE, align 4
  %93 = load %struct.slot*, %struct.slot** %4, align 8
  %94 = getelementptr inbounds %struct.slot, %struct.slot* %93, i32 0, i32 1
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @snprintf(i8* %14, i32 %92, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.1, i64 0, i64 0), i32 %95)
  %97 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %98 = getelementptr inbounds %struct.hotplug_slot, %struct.hotplug_slot* %97, i32 0, i32 0
  store i32* @shpchp_hotplug_slot_ops, i32** %98, align 8
  %99 = load %struct.controller*, %struct.controller** %3, align 8
  %100 = load %struct.controller*, %struct.controller** %3, align 8
  %101 = getelementptr inbounds %struct.controller, %struct.controller* %100, i32 0, i32 4
  %102 = load %struct.TYPE_4__*, %struct.TYPE_4__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load %struct.TYPE_5__*, %struct.TYPE_5__** %103, align 8
  %105 = call i32 @pci_domain_nr(%struct.TYPE_5__* %104)
  %106 = load %struct.slot*, %struct.slot** %4, align 8
  %107 = getelementptr inbounds %struct.slot, %struct.slot* %106, i32 0, i32 9
  %108 = load i32, i32* %107, align 8
  %109 = load %struct.slot*, %struct.slot** %4, align 8
  %110 = getelementptr inbounds %struct.slot, %struct.slot* %109, i32 0, i32 8
  %111 = load i64, i64* %110, align 8
  %112 = load %struct.slot*, %struct.slot** %4, align 8
  %113 = getelementptr inbounds %struct.slot, %struct.slot* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.slot*, %struct.slot** %4, align 8
  %116 = getelementptr inbounds %struct.slot, %struct.slot* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.controller*, %struct.controller** %3, align 8
  %119 = getelementptr inbounds %struct.controller, %struct.controller* %118, i32 0, i32 5
  %120 = load i32, i32* %119, align 8
  %121 = call i32 @ctrl_dbg(%struct.controller* %99, i8* getelementptr inbounds ([83 x i8], [83 x i8]* @.str.2, i64 0, i64 0), i32 %105, i32 %108, i64 %111, i32 %114, i32 %117, i32 %120)
  %122 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %123 = load %struct.controller*, %struct.controller** %3, align 8
  %124 = getelementptr inbounds %struct.controller, %struct.controller* %123, i32 0, i32 4
  %125 = load %struct.TYPE_4__*, %struct.TYPE_4__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %125, i32 0, i32 0
  %127 = load %struct.TYPE_5__*, %struct.TYPE_5__** %126, align 8
  %128 = load %struct.slot*, %struct.slot** %4, align 8
  %129 = getelementptr inbounds %struct.slot, %struct.slot* %128, i32 0, i32 8
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @pci_hp_register(%struct.hotplug_slot* %122, %struct.TYPE_5__* %127, i64 %130, i8* %14)
  store i32 %131, i32* %8, align 4
  %132 = load i32, i32* %8, align 4
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %138

134:                                              ; preds = %84
  %135 = load %struct.controller*, %struct.controller** %3, align 8
  %136 = load i32, i32* %8, align 4
  %137 = call i32 @ctrl_err(%struct.controller* %135, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.3, i64 0, i64 0), i32 %136)
  br label %164

138:                                              ; preds = %84
  %139 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %140 = load %struct.slot*, %struct.slot** %4, align 8
  %141 = getelementptr inbounds %struct.slot, %struct.slot* %140, i32 0, i32 7
  %142 = call i32 @get_power_status(%struct.hotplug_slot* %139, i32* %141)
  %143 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %144 = load %struct.slot*, %struct.slot** %4, align 8
  %145 = getelementptr inbounds %struct.slot, %struct.slot* %144, i32 0, i32 6
  %146 = call i32 @get_attention_status(%struct.hotplug_slot* %143, i32* %145)
  %147 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %148 = load %struct.slot*, %struct.slot** %4, align 8
  %149 = getelementptr inbounds %struct.slot, %struct.slot* %148, i32 0, i32 5
  %150 = call i32 @get_latch_status(%struct.hotplug_slot* %147, i32* %149)
  %151 = load %struct.hotplug_slot*, %struct.hotplug_slot** %5, align 8
  %152 = load %struct.slot*, %struct.slot** %4, align 8
  %153 = getelementptr inbounds %struct.slot, %struct.slot* %152, i32 0, i32 4
  %154 = call i32 @get_adapter_status(%struct.hotplug_slot* %151, i32* %153)
  %155 = load %struct.slot*, %struct.slot** %4, align 8
  %156 = getelementptr inbounds %struct.slot, %struct.slot* %155, i32 0, i32 3
  %157 = load %struct.controller*, %struct.controller** %3, align 8
  %158 = getelementptr inbounds %struct.controller, %struct.controller* %157, i32 0, i32 3
  %159 = call i32 @list_add(i32* %156, i32* %158)
  br label %160

160:                                              ; preds = %138
  %161 = load i32, i32* %9, align 4
  %162 = add nsw i32 %161, 1
  store i32 %162, i32* %9, align 4
  br label %15

163:                                              ; preds = %15
  store i32 0, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %174

164:                                              ; preds = %134
  %165 = load %struct.slot*, %struct.slot** %4, align 8
  %166 = getelementptr inbounds %struct.slot, %struct.slot* %165, i32 0, i32 2
  %167 = load i32, i32* %166, align 8
  %168 = call i32 @destroy_workqueue(i32 %167)
  br label %169

169:                                              ; preds = %164, %81
  %170 = load %struct.slot*, %struct.slot** %4, align 8
  %171 = call i32 @kfree(%struct.slot* %170)
  br label %172

172:                                              ; preds = %169, %26
  %173 = load i32, i32* %8, align 4
  store i32 %173, i32* %2, align 4
  store i32 1, i32* %10, align 4
  br label %174

174:                                              ; preds = %172, %163
  %175 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %175)
  %176 = load i32, i32* %2, align 4
  ret i32 %176
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local %struct.slot* @kzalloc(i32, i32) #2

declare dso_local i32 @alloc_workqueue(i8*, i32, i32, i32) #2

declare dso_local i32 @mutex_init(i32*) #2

declare dso_local i32 @INIT_DELAYED_WORK(i32*, i32) #2

declare dso_local i32 @snprintf(i8*, i32, i8*, i32) #2

declare dso_local i32 @ctrl_dbg(%struct.controller*, i8*, i32, i32, i64, i32, i32, i32) #2

declare dso_local i32 @pci_domain_nr(%struct.TYPE_5__*) #2

declare dso_local i32 @pci_hp_register(%struct.hotplug_slot*, %struct.TYPE_5__*, i64, i8*) #2

declare dso_local i32 @ctrl_err(%struct.controller*, i8*, i32) #2

declare dso_local i32 @get_power_status(%struct.hotplug_slot*, i32*) #2

declare dso_local i32 @get_attention_status(%struct.hotplug_slot*, i32*) #2

declare dso_local i32 @get_latch_status(%struct.hotplug_slot*, i32*) #2

declare dso_local i32 @get_adapter_status(%struct.hotplug_slot*, i32*) #2

declare dso_local i32 @list_add(i32*, i32*) #2

declare dso_local i32 @destroy_workqueue(i32) #2

declare dso_local i32 @kfree(%struct.slot*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
