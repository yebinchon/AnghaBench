; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_dlm_delete_debug_file.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_debug_fs.c_dlm_delete_debug_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @dlm_delete_debug_file(%struct.dlm_ls* %0) #0 {
  %2 = alloca %struct.dlm_ls*, align 8
  store %struct.dlm_ls* %0, %struct.dlm_ls** %2, align 8
  %3 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %4 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %3, i32 0, i32 4
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @debugfs_remove(i32 %5)
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @debugfs_remove(i32 %9)
  %11 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %12 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %11, i32 0, i32 2
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @debugfs_remove(i32 %13)
  %15 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %16 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @debugfs_remove(i32 %17)
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %2, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @debugfs_remove(i32 %21)
  ret void
}

declare dso_local i32 @debugfs_remove(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
