; ModuleID = '/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_del_translation_entry.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/xen/extr_xen-scsiback.c_scsiback_del_translation_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vscsibk_info = type { i32 }
%struct.ids_tuple = type { i32 }
%struct.v2p_entry = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vscsibk_info*, %struct.ids_tuple*)* @scsiback_del_translation_entry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scsiback_del_translation_entry(%struct.vscsibk_info* %0, %struct.ids_tuple* %1) #0 {
  %3 = alloca %struct.vscsibk_info*, align 8
  %4 = alloca %struct.ids_tuple*, align 8
  %5 = alloca %struct.v2p_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  store %struct.vscsibk_info* %0, %struct.vscsibk_info** %3, align 8
  store %struct.ids_tuple* %1, %struct.ids_tuple** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %9 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %8, i32 0, i32 0
  %10 = load i64, i64* %6, align 8
  %11 = call i32 @spin_lock_irqsave(i32* %9, i64 %10)
  %12 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %13 = load %struct.ids_tuple*, %struct.ids_tuple** %4, align 8
  %14 = call %struct.v2p_entry* @scsiback_chk_translation_entry(%struct.vscsibk_info* %12, %struct.ids_tuple* %13)
  store %struct.v2p_entry* %14, %struct.v2p_entry** %5, align 8
  %15 = load %struct.v2p_entry*, %struct.v2p_entry** %5, align 8
  %16 = icmp ne %struct.v2p_entry* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load %struct.v2p_entry*, %struct.v2p_entry** %5, align 8
  %19 = call i32 @__scsiback_del_translation_entry(%struct.v2p_entry* %18)
  br label %23

20:                                               ; preds = %2
  %21 = load i32, i32* @ENOENT, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %17
  %24 = load %struct.vscsibk_info*, %struct.vscsibk_info** %3, align 8
  %25 = getelementptr inbounds %struct.vscsibk_info, %struct.vscsibk_info* %24, i32 0, i32 0
  %26 = load i64, i64* %6, align 8
  %27 = call i32 @spin_unlock_irqrestore(i32* %25, i64 %26)
  %28 = load i32, i32* %7, align 4
  ret i32 %28
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.v2p_entry* @scsiback_chk_translation_entry(%struct.vscsibk_info*, %struct.ids_tuple*) #1

declare dso_local i32 @__scsiback_del_translation_entry(%struct.v2p_entry*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
