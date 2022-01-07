; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_hysdn_conf_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_procconf.c_hysdn_conf_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, %struct.conf_writedata*, %struct.TYPE_5__* }
%struct.conf_writedata = type { i64, i32 }
%struct.TYPE_5__ = type { i32, i32 }
%struct.TYPE_6__ = type { i32 }

@hysdn_conf_mutex = common dso_local global i32 0, align 4
@LOG_PROC_OPEN = common dso_local global i32 0, align 4
@LOG_PROC_ALL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"config close for uid=%d gid=%d mode=0x%x\00", align 1
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@CONF_STATE_POF = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hysdn_conf_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hysdn_conf_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.TYPE_6__*, align 8
  %6 = alloca %struct.conf_writedata*, align 8
  %7 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %7, align 4
  %8 = call i32 @mutex_lock(i32* @hysdn_conf_mutex)
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call %struct.TYPE_6__* @PDE_DATA(%struct.inode* %9)
  store %struct.TYPE_6__* %10, %struct.TYPE_6__** %5, align 8
  %11 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @LOG_PROC_OPEN, align 4
  %15 = load i32, i32* @LOG_PROC_ALL, align 4
  %16 = or i32 %14, %15
  %17 = and i32 %13, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %35

19:                                               ; preds = %2
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %5, align 8
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 2
  %23 = load %struct.TYPE_5__*, %struct.TYPE_5__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.file*, %struct.file** %4, align 8
  %27 = getelementptr inbounds %struct.file, %struct.file* %26, i32 0, i32 2
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.file*, %struct.file** %4, align 8
  %32 = getelementptr inbounds %struct.file, %struct.file* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @hysdn_addlog(%struct.TYPE_6__* %20, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %25, i32 %30, i32 %33)
  br label %35

35:                                               ; preds = %19, %2
  %36 = load %struct.file*, %struct.file** %4, align 8
  %37 = getelementptr inbounds %struct.file, %struct.file* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* @FMODE_READ, align 4
  %40 = load i32, i32* @FMODE_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = and i32 %38, %41
  %43 = load i32, i32* @FMODE_WRITE, align 4
  %44 = icmp eq i32 %42, %43
  br i1 %44, label %45, label %70

45:                                               ; preds = %35
  %46 = load %struct.file*, %struct.file** %4, align 8
  %47 = getelementptr inbounds %struct.file, %struct.file* %46, i32 0, i32 1
  %48 = load %struct.conf_writedata*, %struct.conf_writedata** %47, align 8
  %49 = icmp ne %struct.conf_writedata* %48, null
  br i1 %49, label %50, label %69

50:                                               ; preds = %45
  %51 = load %struct.file*, %struct.file** %4, align 8
  %52 = getelementptr inbounds %struct.file, %struct.file* %51, i32 0, i32 1
  %53 = load %struct.conf_writedata*, %struct.conf_writedata** %52, align 8
  store %struct.conf_writedata* %53, %struct.conf_writedata** %6, align 8
  %54 = load %struct.conf_writedata*, %struct.conf_writedata** %6, align 8
  %55 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @CONF_STATE_POF, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %50
  %60 = load %struct.conf_writedata*, %struct.conf_writedata** %6, align 8
  %61 = getelementptr inbounds %struct.conf_writedata, %struct.conf_writedata* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @pof_write_close(i32 %62)
  store i32 %63, i32* %7, align 4
  br label %64

64:                                               ; preds = %59, %50
  %65 = load %struct.file*, %struct.file** %4, align 8
  %66 = getelementptr inbounds %struct.file, %struct.file* %65, i32 0, i32 1
  %67 = load %struct.conf_writedata*, %struct.conf_writedata** %66, align 8
  %68 = call i32 @kfree(%struct.conf_writedata* %67)
  br label %69

69:                                               ; preds = %64, %45
  br label %86

70:                                               ; preds = %35
  %71 = load %struct.file*, %struct.file** %4, align 8
  %72 = getelementptr inbounds %struct.file, %struct.file* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @FMODE_READ, align 4
  %75 = load i32, i32* @FMODE_WRITE, align 4
  %76 = or i32 %74, %75
  %77 = and i32 %73, %76
  %78 = load i32, i32* @FMODE_READ, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %85

80:                                               ; preds = %70
  %81 = load %struct.file*, %struct.file** %4, align 8
  %82 = getelementptr inbounds %struct.file, %struct.file* %81, i32 0, i32 1
  %83 = load %struct.conf_writedata*, %struct.conf_writedata** %82, align 8
  %84 = call i32 @kfree(%struct.conf_writedata* %83)
  br label %85

85:                                               ; preds = %80, %70
  br label %86

86:                                               ; preds = %85, %69
  %87 = call i32 @mutex_unlock(i32* @hysdn_conf_mutex)
  %88 = load i32, i32* %7, align 4
  ret i32 %88
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_6__* @PDE_DATA(%struct.inode*) #1

declare dso_local i32 @hysdn_addlog(%struct.TYPE_6__*, i8*, i32, i32, i32) #1

declare dso_local i32 @pof_write_close(i32) #1

declare dso_local i32 @kfree(%struct.conf_writedata*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
