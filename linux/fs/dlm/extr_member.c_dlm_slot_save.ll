; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slot_save.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slot_save.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32 }
%struct.dlm_rcom = type { i32, i64 }
%struct.dlm_member = type { i32, i32 }
%struct.rcom_config = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_slot_save(%struct.dlm_ls* %0, %struct.dlm_rcom* %1, %struct.dlm_member* %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.dlm_rcom*, align 8
  %6 = alloca %struct.dlm_member*, align 8
  %7 = alloca %struct.rcom_config*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.dlm_rcom* %1, %struct.dlm_rcom** %5, align 8
  store %struct.dlm_member* %2, %struct.dlm_member** %6, align 8
  %8 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %9 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %8, i32 0, i32 1
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to %struct.rcom_config*
  store %struct.rcom_config* %11, %struct.rcom_config** %7, align 8
  %12 = load %struct.dlm_rcom*, %struct.dlm_rcom** %5, align 8
  %13 = getelementptr inbounds %struct.dlm_rcom, %struct.dlm_rcom* %12, i32 0, i32 0
  %14 = call i32 @dlm_slots_version(i32* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %3
  br label %30

17:                                               ; preds = %3
  %18 = load %struct.rcom_config*, %struct.rcom_config** %7, align 8
  %19 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @le16_to_cpu(i32 %20)
  %22 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %23 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %22, i32 0, i32 1
  store i32 %21, i32* %23, align 4
  %24 = load %struct.rcom_config*, %struct.rcom_config** %7, align 8
  %25 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @le32_to_cpu(i32 %26)
  %28 = load %struct.dlm_member*, %struct.dlm_member** %6, align 8
  %29 = getelementptr inbounds %struct.dlm_member, %struct.dlm_member* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  br label %30

30:                                               ; preds = %17, %16
  ret void
}

declare dso_local i32 @dlm_slots_version(i32*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
