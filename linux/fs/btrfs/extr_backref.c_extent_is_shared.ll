; ModuleID = '/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_extent_is_shared.c'
source_filename = "/home/carl/AnghaBench/linux/fs/btrfs/extr_backref.c_extent_is_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.share_check = type { i32 }

@BACKREF_FOUND_SHARED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.share_check*)* @extent_is_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extent_is_shared(%struct.share_check* %0) #0 {
  %2 = alloca %struct.share_check*, align 8
  store %struct.share_check* %0, %struct.share_check** %2, align 8
  %3 = load %struct.share_check*, %struct.share_check** %2, align 8
  %4 = icmp ne %struct.share_check* %3, null
  br i1 %4, label %5, label %12

5:                                                ; preds = %1
  %6 = load %struct.share_check*, %struct.share_check** %2, align 8
  %7 = getelementptr inbounds %struct.share_check, %struct.share_check* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 1
  br i1 %9, label %10, label %12

10:                                               ; preds = %5
  %11 = load i32, i32* @BACKREF_FOUND_SHARED, align 4
  br label %13

12:                                               ; preds = %5, %1
  br label %13

13:                                               ; preds = %12, %10
  %14 = phi i32 [ %11, %10 ], [ 0, %12 ]
  ret i32 %14
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
