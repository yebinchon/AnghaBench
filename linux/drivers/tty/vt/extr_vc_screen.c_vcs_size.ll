; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_size.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vc_screen.c_vcs_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.vc_data = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@HEADER_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*)* @vcs_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vcs_size(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.vc_data*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = call i32 (...) @WARN_CONSOLE_UNLOCKED()
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = call %struct.vc_data* @vcs_vc(%struct.inode* %7, i32* null)
  store %struct.vc_data* %8, %struct.vc_data** %5, align 8
  %9 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %10 = icmp ne %struct.vc_data* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @ENXIO, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %47

14:                                               ; preds = %1
  %15 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %16 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.vc_data*, %struct.vc_data** %5, align 8
  %19 = getelementptr inbounds %struct.vc_data, %struct.vc_data* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = mul nsw i32 %17, %20
  store i32 %21, i32* %4, align 4
  %22 = load %struct.inode*, %struct.inode** %3, align 8
  %23 = call i64 @use_attributes(%struct.inode* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %37

25:                                               ; preds = %14
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i64 @use_unicode(%struct.inode* %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %25
  %30 = load i32, i32* @EOPNOTSUPP, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %2, align 4
  br label %47

32:                                               ; preds = %25
  %33 = load i32, i32* %4, align 4
  %34 = mul nsw i32 2, %33
  %35 = load i32, i32* @HEADER_SIZE, align 4
  %36 = add nsw i32 %34, %35
  store i32 %36, i32* %4, align 4
  br label %45

37:                                               ; preds = %14
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = call i64 @use_unicode(%struct.inode* %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* %4, align 4
  %43 = mul nsw i32 %42, 4
  store i32 %43, i32* %4, align 4
  br label %44

44:                                               ; preds = %41, %37
  br label %45

45:                                               ; preds = %44, %32
  %46 = load i32, i32* %4, align 4
  store i32 %46, i32* %2, align 4
  br label %47

47:                                               ; preds = %45, %29, %11
  %48 = load i32, i32* %2, align 4
  ret i32 %48
}

declare dso_local i32 @WARN_CONSOLE_UNLOCKED(...) #1

declare dso_local %struct.vc_data* @vcs_vc(%struct.inode*, i32*) #1

declare dso_local i64 @use_attributes(%struct.inode*) #1

declare dso_local i64 @use_unicode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
