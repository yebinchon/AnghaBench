; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_hysdn_log_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_hysdn_log_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32, i64 }
%struct.log_data = type { %struct.log_data*, i32, i64 }
%struct.procdata = type { i64, %struct.log_data* }
%struct.TYPE_3__ = type { %struct.procdata* }

@hysdn_log_mutex = common dso_local global i32 0, align 4
@FMODE_READ = common dso_local global i32 0, align 4
@FMODE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hysdn_log_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hysdn_log_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.log_data*, align 8
  %6 = alloca %struct.procdata*, align 8
  %7 = alloca %struct.TYPE_3__*, align 8
  %8 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  store i32 0, i32* %8, align 4
  %9 = call i32 @mutex_lock(i32* @hysdn_log_mutex)
  %10 = load %struct.file*, %struct.file** %4, align 8
  %11 = getelementptr inbounds %struct.file, %struct.file* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* @FMODE_READ, align 4
  %14 = load i32, i32* @FMODE_WRITE, align 4
  %15 = or i32 %13, %14
  %16 = and i32 %12, %15
  %17 = load i32, i32* @FMODE_WRITE, align 4
  %18 = icmp eq i32 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %8, align 4
  br label %90

20:                                               ; preds = %2
  %21 = load %struct.file*, %struct.file** %4, align 8
  %22 = getelementptr inbounds %struct.file, %struct.file* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = inttoptr i64 %23 to %struct.log_data**
  %25 = load %struct.log_data*, %struct.log_data** %24, align 8
  store %struct.log_data* %25, %struct.log_data** %5, align 8
  %26 = load %struct.log_data*, %struct.log_data** %5, align 8
  %27 = icmp ne %struct.log_data* %26, null
  br i1 %27, label %28, label %33

28:                                               ; preds = %20
  %29 = load %struct.log_data*, %struct.log_data** %5, align 8
  %30 = getelementptr inbounds %struct.log_data, %struct.log_data* %29, i32 0, i32 2
  %31 = load i64, i64* %30, align 8
  %32 = inttoptr i64 %31 to %struct.procdata*
  store %struct.procdata* %32, %struct.procdata** %6, align 8
  br label %40

33:                                               ; preds = %20
  %34 = load %struct.file*, %struct.file** %4, align 8
  %35 = call i32 @file_inode(%struct.file* %34)
  %36 = call %struct.TYPE_3__* @PDE_DATA(i32 %35)
  store %struct.TYPE_3__* %36, %struct.TYPE_3__** %7, align 8
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %7, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load %struct.procdata*, %struct.procdata** %38, align 8
  store %struct.procdata* %39, %struct.procdata** %6, align 8
  br label %40

40:                                               ; preds = %33, %28
  %41 = load %struct.procdata*, %struct.procdata** %6, align 8
  %42 = icmp ne %struct.procdata* %41, null
  br i1 %42, label %43, label %48

43:                                               ; preds = %40
  %44 = load %struct.procdata*, %struct.procdata** %6, align 8
  %45 = getelementptr inbounds %struct.procdata, %struct.procdata* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = add nsw i64 %46, -1
  store i64 %47, i64* %45, align 8
  br label %48

48:                                               ; preds = %43, %40
  br label %49

49:                                               ; preds = %52, %48
  %50 = load %struct.log_data*, %struct.log_data** %5, align 8
  %51 = icmp ne %struct.log_data* %50, null
  br i1 %51, label %52, label %60

52:                                               ; preds = %49
  %53 = load %struct.log_data*, %struct.log_data** %5, align 8
  %54 = getelementptr inbounds %struct.log_data, %struct.log_data* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = add nsw i32 %55, -1
  store i32 %56, i32* %54, align 8
  %57 = load %struct.log_data*, %struct.log_data** %5, align 8
  %58 = getelementptr inbounds %struct.log_data, %struct.log_data* %57, i32 0, i32 0
  %59 = load %struct.log_data*, %struct.log_data** %58, align 8
  store %struct.log_data* %59, %struct.log_data** %5, align 8
  br label %49

60:                                               ; preds = %49
  %61 = load %struct.procdata*, %struct.procdata** %6, align 8
  %62 = icmp ne %struct.procdata* %61, null
  br i1 %62, label %63, label %89

63:                                               ; preds = %60
  %64 = load %struct.procdata*, %struct.procdata** %6, align 8
  %65 = getelementptr inbounds %struct.procdata, %struct.procdata* %64, i32 0, i32 0
  %66 = load i64, i64* %65, align 8
  %67 = icmp sle i64 %66, 0
  br i1 %67, label %68, label %88

68:                                               ; preds = %63
  br label %69

69:                                               ; preds = %74, %68
  %70 = load %struct.procdata*, %struct.procdata** %6, align 8
  %71 = getelementptr inbounds %struct.procdata, %struct.procdata* %70, i32 0, i32 1
  %72 = load %struct.log_data*, %struct.log_data** %71, align 8
  %73 = icmp ne %struct.log_data* %72, null
  br i1 %73, label %74, label %87

74:                                               ; preds = %69
  %75 = load %struct.procdata*, %struct.procdata** %6, align 8
  %76 = getelementptr inbounds %struct.procdata, %struct.procdata* %75, i32 0, i32 1
  %77 = load %struct.log_data*, %struct.log_data** %76, align 8
  store %struct.log_data* %77, %struct.log_data** %5, align 8
  %78 = load %struct.procdata*, %struct.procdata** %6, align 8
  %79 = getelementptr inbounds %struct.procdata, %struct.procdata* %78, i32 0, i32 1
  %80 = load %struct.log_data*, %struct.log_data** %79, align 8
  %81 = getelementptr inbounds %struct.log_data, %struct.log_data* %80, i32 0, i32 0
  %82 = load %struct.log_data*, %struct.log_data** %81, align 8
  %83 = load %struct.procdata*, %struct.procdata** %6, align 8
  %84 = getelementptr inbounds %struct.procdata, %struct.procdata* %83, i32 0, i32 1
  store %struct.log_data* %82, %struct.log_data** %84, align 8
  %85 = load %struct.log_data*, %struct.log_data** %5, align 8
  %86 = call i32 @kfree(%struct.log_data* %85)
  br label %69

87:                                               ; preds = %69
  br label %88

88:                                               ; preds = %87, %63
  br label %89

89:                                               ; preds = %88, %60
  br label %90

90:                                               ; preds = %89, %19
  %91 = call i32 @mutex_unlock(i32* @hysdn_log_mutex)
  %92 = load i32, i32* %8, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local %struct.TYPE_3__* @PDE_DATA(i32) #1

declare dso_local i32 @file_inode(%struct.file*) #1

declare dso_local i32 @kfree(%struct.log_data*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
