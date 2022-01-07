; ModuleID = '/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_debugfs_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/platform/x86/extr_samsung-laptop.c_samsung_debugfs_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.samsung_laptop = type { %struct.TYPE_4__, %struct.TYPE_5__*, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_6__, %struct.TYPE_5__, i32, %struct.dentry* }
%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32, i32, i32 }
%struct.dentry = type { i32 }

@.str = private unnamed_addr constant [15 x i8] c"samsung-laptop\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"command\00", align 1
@S_IRUGO = common dso_local global i32 0, align 4
@S_IWUSR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [3 x i8] c"d0\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"d1\00", align 1
@.str.4 = private unnamed_addr constant [3 x i8] c"d2\00", align 1
@.str.5 = private unnamed_addr constant [3 x i8] c"d3\00", align 1
@.str.6 = private unnamed_addr constant [5 x i8] c"data\00", align 1
@.str.7 = private unnamed_addr constant [14 x i8] c"f0000_segment\00", align 1
@S_IRUSR = common dso_local global i32 0, align 4
@.str.8 = private unnamed_addr constant [5 x i8] c"call\00", align 1
@S_IFREG = common dso_local global i32 0, align 4
@samsung_laptop_call_fops = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [6 x i8] c"sdiag\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.samsung_laptop*)* @samsung_debugfs_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @samsung_debugfs_init(%struct.samsung_laptop* %0) #0 {
  %2 = alloca %struct.samsung_laptop*, align 8
  %3 = alloca %struct.dentry*, align 8
  store %struct.samsung_laptop* %0, %struct.samsung_laptop** %2, align 8
  %4 = call %struct.dentry* @debugfs_create_dir(i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str, i64 0, i64 0), i32* null)
  store %struct.dentry* %4, %struct.dentry** %3, align 8
  %5 = load %struct.dentry*, %struct.dentry** %3, align 8
  %6 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %7 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %7, i32 0, i32 5
  store %struct.dentry* %5, %struct.dentry** %8, align 8
  %9 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %10 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %9, i32 0, i32 2
  %11 = load %struct.TYPE_5__*, %struct.TYPE_5__** %10, align 8
  %12 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %13 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %13, i32 0, i32 1
  %15 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %14, i32 0, i32 1
  store %struct.TYPE_5__* %11, %struct.TYPE_5__** %15, align 8
  %16 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %17 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 1
  %19 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %18, i32 0, i32 0
  store i32 65535, i32* %19, align 8
  %20 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %21 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 3
  %23 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %24 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 2
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 1
  store %struct.TYPE_5__* %22, %struct.TYPE_5__** %26, align 8
  %27 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %28 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %29, i32 0, i32 0
  store i32 16, i32* %30, align 8
  %31 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %32 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %35 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 1
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %37, align 8
  %38 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %39 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = call i32 @strlen(%struct.TYPE_5__* %40)
  %42 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %43 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 0
  store i32 %41, i32* %45, align 8
  %46 = load i32, i32* @S_IRUGO, align 4
  %47 = load i32, i32* @S_IWUSR, align 4
  %48 = or i32 %46, %47
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %51 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 4
  %53 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0), i32 %48, %struct.dentry* %49, i32* %52)
  %54 = load i32, i32* @S_IRUGO, align 4
  %55 = load i32, i32* @S_IWUSR, align 4
  %56 = or i32 %54, %55
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %59 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 3
  %61 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %60, i32 0, i32 3
  %62 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.2, i64 0, i64 0), i32 %56, %struct.dentry* %57, i32* %61)
  %63 = load i32, i32* @S_IRUGO, align 4
  %64 = load i32, i32* @S_IWUSR, align 4
  %65 = or i32 %63, %64
  %66 = load %struct.dentry*, %struct.dentry** %3, align 8
  %67 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %68 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %67, i32 0, i32 0
  %69 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %68, i32 0, i32 3
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 2
  %71 = call i32 @debugfs_create_u32(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i32 %65, %struct.dentry* %66, i32* %70)
  %72 = load i32, i32* @S_IRUGO, align 4
  %73 = load i32, i32* @S_IWUSR, align 4
  %74 = or i32 %72, %73
  %75 = load %struct.dentry*, %struct.dentry** %3, align 8
  %76 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %77 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %76, i32 0, i32 0
  %78 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %77, i32 0, i32 3
  %79 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %78, i32 0, i32 1
  %80 = call i32 @debugfs_create_u16(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.4, i64 0, i64 0), i32 %74, %struct.dentry* %75, i32* %79)
  %81 = load i32, i32* @S_IRUGO, align 4
  %82 = load i32, i32* @S_IWUSR, align 4
  %83 = or i32 %81, %82
  %84 = load %struct.dentry*, %struct.dentry** %3, align 8
  %85 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %86 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %85, i32 0, i32 0
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 3
  %88 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %87, i32 0, i32 0
  %89 = call i32 @debugfs_create_u8(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.5, i64 0, i64 0), i32 %83, %struct.dentry* %84, i32* %88)
  %90 = load i32, i32* @S_IRUGO, align 4
  %91 = load i32, i32* @S_IWUSR, align 4
  %92 = or i32 %90, %91
  %93 = load %struct.dentry*, %struct.dentry** %3, align 8
  %94 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %95 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.6, i64 0, i64 0), i32 %92, %struct.dentry* %93, %struct.TYPE_6__* %96)
  %98 = load i32, i32* @S_IRUSR, align 4
  %99 = load i32, i32* @S_IWUSR, align 4
  %100 = or i32 %98, %99
  %101 = load %struct.dentry*, %struct.dentry** %3, align 8
  %102 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %103 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %102, i32 0, i32 0
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 1
  %105 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.7, i64 0, i64 0), i32 %100, %struct.dentry* %101, %struct.TYPE_6__* %104)
  %106 = load i32, i32* @S_IFREG, align 4
  %107 = load i32, i32* @S_IRUGO, align 4
  %108 = or i32 %106, %107
  %109 = load %struct.dentry*, %struct.dentry** %3, align 8
  %110 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %111 = call i32 @debugfs_create_file(i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.8, i64 0, i64 0), i32 %108, %struct.dentry* %109, %struct.samsung_laptop* %110, i32* @samsung_laptop_call_fops)
  %112 = load i32, i32* @S_IRUGO, align 4
  %113 = load i32, i32* @S_IWUSR, align 4
  %114 = or i32 %112, %113
  %115 = load %struct.dentry*, %struct.dentry** %3, align 8
  %116 = load %struct.samsung_laptop*, %struct.samsung_laptop** %2, align 8
  %117 = getelementptr inbounds %struct.samsung_laptop, %struct.samsung_laptop* %116, i32 0, i32 0
  %118 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %117, i32 0, i32 0
  %119 = call i32 @debugfs_create_blob(i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.9, i64 0, i64 0), i32 %114, %struct.dentry* %115, %struct.TYPE_6__* %118)
  ret void
}

declare dso_local %struct.dentry* @debugfs_create_dir(i8*, i32*) #1

declare dso_local i32 @strlen(%struct.TYPE_5__*) #1

declare dso_local i32 @debugfs_create_u16(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u32(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_u8(i8*, i32, %struct.dentry*, i32*) #1

declare dso_local i32 @debugfs_create_blob(i8*, i32, %struct.dentry*, %struct.TYPE_6__*) #1

declare dso_local i32 @debugfs_create_file(i8*, i32, %struct.dentry*, %struct.samsung_laptop*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
