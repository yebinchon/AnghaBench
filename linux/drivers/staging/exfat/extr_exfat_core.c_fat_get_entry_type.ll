; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_get_entry_type.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/exfat/extr_exfat_core.c_fat_get_entry_type.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry_t = type { i32 }
%struct.dos_dentry_t = type { i32*, i32 }

@TYPE_UNUSED = common dso_local global i32 0, align 4
@TYPE_DELETED = common dso_local global i32 0, align 4
@ATTR_EXTEND = common dso_local global i32 0, align 4
@TYPE_EXTEND = common dso_local global i32 0, align 4
@ATTR_SUBDIR = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@TYPE_VOLUME = common dso_local global i32 0, align 4
@TYPE_DIR = common dso_local global i32 0, align 4
@TYPE_FILE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_get_entry_type(%struct.dentry_t* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.dentry_t*, align 8
  %4 = alloca %struct.dos_dentry_t*, align 8
  store %struct.dentry_t* %0, %struct.dentry_t** %3, align 8
  %5 = load %struct.dentry_t*, %struct.dentry_t** %3, align 8
  %6 = bitcast %struct.dentry_t* %5 to %struct.dos_dentry_t*
  store %struct.dos_dentry_t* %6, %struct.dos_dentry_t** %4, align 8
  %7 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %8 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = load i32, i32* %9, align 4
  %11 = icmp eq i32 %10, 0
  br i1 %11, label %12, label %14

12:                                               ; preds = %1
  %13 = load i32, i32* @TYPE_UNUSED, align 4
  store i32 %13, i32* %2, align 4
  br label %60

14:                                               ; preds = %1
  %15 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %16 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = load i32, i32* %17, align 4
  %19 = icmp eq i32 %18, 229
  br i1 %19, label %20, label %22

20:                                               ; preds = %14
  %21 = load i32, i32* @TYPE_DELETED, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %14
  %23 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %24 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @ATTR_EXTEND, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @TYPE_EXTEND, align 4
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %32 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  %34 = load i32, i32* @ATTR_SUBDIR, align 4
  %35 = load i32, i32* @ATTR_VOLUME, align 4
  %36 = or i32 %34, %35
  %37 = and i32 %33, %36
  %38 = load i32, i32* @ATTR_VOLUME, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %42

40:                                               ; preds = %30
  %41 = load i32, i32* @TYPE_VOLUME, align 4
  store i32 %41, i32* %2, align 4
  br label %60

42:                                               ; preds = %30
  %43 = load %struct.dos_dentry_t*, %struct.dos_dentry_t** %4, align 8
  %44 = getelementptr inbounds %struct.dos_dentry_t, %struct.dos_dentry_t* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @ATTR_SUBDIR, align 4
  %47 = load i32, i32* @ATTR_VOLUME, align 4
  %48 = or i32 %46, %47
  %49 = and i32 %45, %48
  %50 = load i32, i32* @ATTR_SUBDIR, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %54

52:                                               ; preds = %42
  %53 = load i32, i32* @TYPE_DIR, align 4
  store i32 %53, i32* %2, align 4
  br label %60

54:                                               ; preds = %42
  br label %55

55:                                               ; preds = %54
  br label %56

56:                                               ; preds = %55
  br label %57

57:                                               ; preds = %56
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* @TYPE_FILE, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %52, %40, %28, %20, %12
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
