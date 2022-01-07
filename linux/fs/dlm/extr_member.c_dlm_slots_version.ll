; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slots_version.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_member.c_dlm_slots_version.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_header = type { i32 }

@DLM_HEADER_SLOTS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @dlm_slots_version(%struct.dlm_header* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dlm_header*, align 8
  store %struct.dlm_header* %0, %struct.dlm_header** %3, align 8
  %4 = load %struct.dlm_header*, %struct.dlm_header** %3, align 8
  %5 = getelementptr inbounds %struct.dlm_header, %struct.dlm_header* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  %7 = and i32 %6, 65535
  %8 = load i32, i32* @DLM_HEADER_SLOTS, align 4
  %9 = icmp slt i32 %7, %8
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %12

11:                                               ; preds = %1
  store i32 1, i32* %2, align 4
  br label %12

12:                                               ; preds = %11, %10
  %13 = load i32, i32* %2, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
