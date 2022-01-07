; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mmap_has_permissions.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/gasket/extr_gasket_core.c_gasket_mmap_has_permissions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gasket_dev = type { i64, i32, i32 }
%struct.vm_area_struct = type { i32 }

@CAP_SYS_ADMIN = common dso_local global i32 0, align 4
@GASKET_STATUS_ALIVE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [17 x i8] c"Device is dead.\0A\00", align 1
@VM_WRITE = common dso_local global i32 0, align 4
@VM_READ = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [94 x i8] c"Attempting to map a region with requested permissions 0x%x, but region has permissions 0x%x.\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"Attempting to mmap a region for write without owning device.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gasket_dev*, %struct.vm_area_struct*, i32)* @gasket_mmap_has_permissions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gasket_mmap_has_permissions(%struct.gasket_dev* %0, %struct.vm_area_struct* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.gasket_dev*, align 8
  %6 = alloca %struct.vm_area_struct*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.gasket_dev* %0, %struct.gasket_dev** %5, align 8
  store %struct.vm_area_struct* %1, %struct.vm_area_struct** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* @CAP_SYS_ADMIN, align 4
  %10 = call i64 @capable(i32 %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %13

12:                                               ; preds = %3
  store i32 1, i32* %4, align 4
  br label %64

13:                                               ; preds = %3
  %14 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %15 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @GASKET_STATUS_ALIVE, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %21 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i32, i8*, ...) @dev_dbg(i32 %22, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %64

24:                                               ; preds = %13
  %25 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %26 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = load i32, i32* @VM_WRITE, align 4
  %29 = load i32, i32* @VM_READ, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @VM_EXEC, align 4
  %32 = or i32 %30, %31
  %33 = and i32 %27, %32
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %7, align 4
  %36 = xor i32 %35, -1
  %37 = and i32 %34, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %46

39:                                               ; preds = %24
  %40 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %41 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %8, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 (i32, i8*, ...) @dev_dbg(i32 %42, i8* getelementptr inbounds ([94 x i8], [94 x i8]* @.str.1, i64 0, i64 0), i32 %43, i32 %44)
  store i32 0, i32* %4, align 4
  br label %64

46:                                               ; preds = %24
  %47 = load %struct.vm_area_struct*, %struct.vm_area_struct** %6, align 8
  %48 = getelementptr inbounds %struct.vm_area_struct, %struct.vm_area_struct* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* @VM_WRITE, align 4
  %51 = and i32 %49, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %63

53:                                               ; preds = %46
  %54 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %55 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %54, i32 0, i32 2
  %56 = call i32 @gasket_owned_by_current_tgid(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %63, label %58

58:                                               ; preds = %53
  %59 = load %struct.gasket_dev*, %struct.gasket_dev** %5, align 8
  %60 = getelementptr inbounds %struct.gasket_dev, %struct.gasket_dev* %59, i32 0, i32 1
  %61 = load i32, i32* %60, align 8
  %62 = call i32 (i32, i8*, ...) @dev_dbg(i32 %61, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %4, align 4
  br label %64

63:                                               ; preds = %53, %46
  store i32 1, i32* %4, align 4
  br label %64

64:                                               ; preds = %63, %58, %39, %19, %12
  %65 = load i32, i32* %4, align 4
  ret i32 %65
}

declare dso_local i64 @capable(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @gasket_owned_by_current_tgid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
