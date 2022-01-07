; ModuleID = '/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_record_cm_probe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/afs/extr_cmservice.c_afs_record_cm_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.afs_call = type { i64 }
%struct.afs_server = type { i64, i32, %struct.TYPE_2__, i32, i32 }
%struct.TYPE_2__ = type { i32, i64, i32, i32 }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@AFS_SERVER_FL_HAVE_EPOCH = common dso_local global i32 0, align 4
@AFS_SERVER_FL_PROBING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"kAFS: FS rebooted %pU\0A\00", align 1
@.str.2 = private unnamed_addr constant [37 x i8] c"kAFS: FS endpoints inconsistent %pU\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.afs_call*, %struct.afs_server*)* @afs_record_cm_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @afs_record_cm_probe(%struct.afs_call* %0, %struct.afs_server* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.afs_call*, align 8
  %5 = alloca %struct.afs_server*, align 8
  store %struct.afs_call* %0, %struct.afs_call** %4, align 8
  store %struct.afs_server* %1, %struct.afs_server** %5, align 8
  %6 = call i32 @_enter(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @AFS_SERVER_FL_HAVE_EPOCH, align 4
  %8 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %9 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %8, i32 0, i32 4
  %10 = call i64 @test_bit(i32 %7, i32* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %41

12:                                               ; preds = %2
  %13 = load i32, i32* @AFS_SERVER_FL_PROBING, align 4
  %14 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %15 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %14, i32 0, i32 4
  %16 = call i64 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %41, label %18

18:                                               ; preds = %12
  %19 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %20 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %23 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp eq i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %3, align 4
  br label %119

27:                                               ; preds = %18
  %28 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %29 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %28, i32 0, i32 2
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %40, label %33

33:                                               ; preds = %27
  %34 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %35 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %34, i32 0, i32 3
  %36 = call i32 @pr_notice(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32* %35)
  %37 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %38 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %37, i32 0, i32 2
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  store i32 1, i32* %39, align 8
  br label %40

40:                                               ; preds = %33, %27
  br label %41

41:                                               ; preds = %40, %12, %2
  %42 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %43 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %42, i32 0, i32 1
  %44 = call i32 @spin_lock(i32* %43)
  %45 = load i32, i32* @AFS_SERVER_FL_HAVE_EPOCH, align 4
  %46 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %47 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %46, i32 0, i32 4
  %48 = call i64 @test_bit(i32 %45, i32* %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %62, label %50

50:                                               ; preds = %41
  %51 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %52 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %55 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %54, i32 0, i32 0
  store i64 %53, i64* %55, align 8
  %56 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %57 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %60 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 1
  store i64 %58, i64* %61, align 8
  br label %112

62:                                               ; preds = %41
  %63 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %64 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %63, i32 0, i32 2
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %68, label %90

68:                                               ; preds = %62
  %69 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %70 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %73 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %72, i32 0, i32 2
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %71, %75
  br i1 %76, label %77, label %90

77:                                               ; preds = %68
  %78 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %79 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 3
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %90, label %83

83:                                               ; preds = %77
  %84 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %85 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %84, i32 0, i32 3
  %86 = call i32 @pr_notice(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), i32* %85)
  %87 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %88 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 3
  store i32 1, i32* %89, align 4
  br label %90

90:                                               ; preds = %83, %77, %68, %62
  %91 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %92 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %91, i32 0, i32 2
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = icmp ne i32 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %90
  %97 = load %struct.afs_call*, %struct.afs_call** %4, align 8
  %98 = getelementptr inbounds %struct.afs_call, %struct.afs_call* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %101 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = icmp eq i64 %99, %102
  br i1 %103, label %104, label %111

104:                                              ; preds = %96, %90
  %105 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %106 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %109 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %108, i32 0, i32 2
  %110 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %109, i32 0, i32 1
  store i64 %107, i64* %110, align 8
  br label %111

111:                                              ; preds = %104, %96
  br label %112

112:                                              ; preds = %111, %50
  %113 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %114 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %113, i32 0, i32 2
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 2
  store i32 1, i32* %115, align 8
  %116 = load %struct.afs_server*, %struct.afs_server** %5, align 8
  %117 = getelementptr inbounds %struct.afs_server, %struct.afs_server* %116, i32 0, i32 1
  %118 = call i32 @spin_unlock(i32* %117)
  store i32 0, i32* %3, align 4
  br label %119

119:                                              ; preds = %112, %26
  %120 = load i32, i32* %3, align 4
  ret i32 %120
}

declare dso_local i32 @_enter(i8*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @pr_notice(i8*, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
