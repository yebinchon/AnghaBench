; ModuleID = '/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_lookup_dev_ioctl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/autofs/extr_dev-ioctl.c_lookup_dev_ioctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@lookup_dev_ioctl._ioctls = internal global [14 x i32*] [i32* inttoptr (i64 128 to i32*), i32* inttoptr (i64 133 to i32*), i32* inttoptr (i64 134 to i32*), i32* inttoptr (i64 135 to i32*), i32* inttoptr (i64 139 to i32*), i32* inttoptr (i64 132 to i32*), i32* inttoptr (i64 137 to i32*), i32* inttoptr (i64 130 to i32*), i32* inttoptr (i64 140 to i32*), i32* inttoptr (i64 129 to i32*), i32* inttoptr (i64 131 to i32*), i32* inttoptr (i64 138 to i32*), i32* inttoptr (i64 141 to i32*), i32* inttoptr (i64 136 to i32*)], align 16
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32)* @lookup_dev_ioctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @lookup_dev_ioctl(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @cmd_idx(i32 %4)
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %3, align 4
  %7 = call i32 @ARRAY_SIZE(i32** getelementptr inbounds ([14 x i32*], [14 x i32*]* @lookup_dev_ioctl._ioctls, i64 0, i64 0))
  %8 = icmp uge i32 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %15

10:                                               ; preds = %1
  %11 = load i32, i32* %3, align 4
  %12 = zext i32 %11 to i64
  %13 = getelementptr inbounds [14 x i32*], [14 x i32*]* @lookup_dev_ioctl._ioctls, i64 0, i64 %12
  %14 = load i32*, i32** %13, align 8
  br label %15

15:                                               ; preds = %10, %9
  %16 = phi i32* [ null, %9 ], [ %14, %10 ]
  ret i32* %16
}

declare dso_local i32 @cmd_idx(i32) #1

declare dso_local i32 @ARRAY_SIZE(i32**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
