; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_establish_session.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_establish_session.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { %struct.cifs_ses* }
%struct.cifs_ses = type { i32, i32, %struct.TYPE_6__*, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i32, i32, i32, %struct.TYPE_4__, i64 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@FYI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [39 x i8] c"CIFS session established successfully\0A\00", align 1
@GlobalMid_Lock = common dso_local global i32 0, align 4
@CifsGood = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sess_data*)* @sess_establish_session to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sess_establish_session(%struct.sess_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sess_data*, align 8
  %4 = alloca %struct.cifs_ses*, align 8
  store %struct.sess_data* %0, %struct.sess_data** %3, align 8
  %5 = load %struct.sess_data*, %struct.sess_data** %3, align 8
  %6 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %5, i32 0, i32 0
  %7 = load %struct.cifs_ses*, %struct.cifs_ses** %6, align 8
  store %struct.cifs_ses* %7, %struct.cifs_ses** %4, align 8
  %8 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %9 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %8, i32 0, i32 2
  %10 = load %struct.TYPE_6__*, %struct.TYPE_6__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %10, i32 0, i32 2
  %12 = call i32 @mutex_lock(i32* %11)
  %13 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %14 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %13, i32 0, i32 2
  %15 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %76, label %19

19:                                               ; preds = %1
  %20 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %21 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %20, i32 0, i32 2
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %67

26:                                               ; preds = %19
  %27 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %28 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %27, i32 0, i32 3
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %32 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %31, i32 0, i32 3
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* @GFP_KERNEL, align 4
  %36 = call i32 @kmemdup(i32 %30, i32 %34, i32 %35)
  %37 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %38 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %37, i32 0, i32 2
  %39 = load %struct.TYPE_6__*, %struct.TYPE_6__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %39, i32 0, i32 3
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %36, i32* %41, align 4
  %42 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %43 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %42, i32 0, i32 2
  %44 = load %struct.TYPE_6__*, %struct.TYPE_6__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %44, i32 0, i32 3
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %57, label %49

49:                                               ; preds = %26
  %50 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %51 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %50, i32 0, i32 2
  %52 = load %struct.TYPE_6__*, %struct.TYPE_6__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %52, i32 0, i32 2
  %54 = call i32 @mutex_unlock(i32* %53)
  %55 = load i32, i32* @ENOMEM, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %91

57:                                               ; preds = %26
  %58 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %59 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %58, i32 0, i32 3
  %60 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %63 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %62, i32 0, i32 2
  %64 = load %struct.TYPE_6__*, %struct.TYPE_6__** %63, align 8
  %65 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %64, i32 0, i32 3
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %65, i32 0, i32 0
  store i32 %61, i32* %66, align 4
  br label %67

67:                                               ; preds = %57, %19
  %68 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %69 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %68, i32 0, i32 2
  %70 = load %struct.TYPE_6__*, %struct.TYPE_6__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 1
  store i32 2, i32* %71, align 4
  %72 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %73 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %72, i32 0, i32 2
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  store i32 1, i32* %75, align 8
  br label %76

76:                                               ; preds = %67, %1
  %77 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %78 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %77, i32 0, i32 2
  %79 = load %struct.TYPE_6__*, %struct.TYPE_6__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %79, i32 0, i32 2
  %81 = call i32 @mutex_unlock(i32* %80)
  %82 = load i32, i32* @FYI, align 4
  %83 = call i32 @cifs_dbg(i32 %82, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0))
  %84 = call i32 @spin_lock(i32* @GlobalMid_Lock)
  %85 = load i32, i32* @CifsGood, align 4
  %86 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %87 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %86, i32 0, i32 1
  store i32 %85, i32* %87, align 4
  %88 = load %struct.cifs_ses*, %struct.cifs_ses** %4, align 8
  %89 = getelementptr inbounds %struct.cifs_ses, %struct.cifs_ses* %88, i32 0, i32 0
  store i32 0, i32* %89, align 8
  %90 = call i32 @spin_unlock(i32* @GlobalMid_Lock)
  store i32 0, i32* %2, align 4
  br label %91

91:                                               ; preds = %76, %49
  %92 = load i32, i32* %2, align 4
  ret i32 %92
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @kmemdup(i32, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @cifs_dbg(i32, i8*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
