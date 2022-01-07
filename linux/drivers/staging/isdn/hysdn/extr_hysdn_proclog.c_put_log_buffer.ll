; ModuleID = '/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_put_log_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/staging/isdn/hysdn/extr_hysdn_proclog.c_put_log_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32, %struct.procdata* }
%struct.procdata = type { i64, i32, %struct.log_data*, %struct.log_data* }
%struct.log_data = type { i64, %struct.log_data*, %struct.procdata*, i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, i8*)* @put_log_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @put_log_buffer(%struct.TYPE_3__* %0, i8* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.log_data*, align 8
  %6 = alloca %struct.procdata*, align 8
  %7 = alloca i64, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store i8* %1, i8** %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 1
  %10 = load %struct.procdata*, %struct.procdata** %9, align 8
  store %struct.procdata* %10, %struct.procdata** %6, align 8
  %11 = load %struct.procdata*, %struct.procdata** %6, align 8
  %12 = icmp ne %struct.procdata* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %121

14:                                               ; preds = %2
  %15 = load i8*, i8** %4, align 8
  %16 = icmp ne i8* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %14
  br label %121

18:                                               ; preds = %14
  %19 = load i8*, i8** %4, align 8
  %20 = load i8, i8* %19, align 1
  %21 = icmp ne i8 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %18
  br label %121

23:                                               ; preds = %18
  %24 = load %struct.procdata*, %struct.procdata** %6, align 8
  %25 = getelementptr inbounds %struct.procdata, %struct.procdata* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = icmp sle i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %121

29:                                               ; preds = %23
  %30 = load i8*, i8** %4, align 8
  %31 = call i64 @strlen(i8* %30)
  %32 = add i64 32, %31
  %33 = load i32, i32* @GFP_ATOMIC, align 4
  %34 = call %struct.log_data* @kmalloc(i64 %32, i32 %33)
  store %struct.log_data* %34, %struct.log_data** %5, align 8
  %35 = icmp ne %struct.log_data* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %29
  br label %121

37:                                               ; preds = %29
  %38 = load %struct.log_data*, %struct.log_data** %5, align 8
  %39 = getelementptr inbounds %struct.log_data, %struct.log_data* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i8*, i8** %4, align 8
  %42 = call i32 @strcpy(i32 %40, i8* %41)
  %43 = load %struct.log_data*, %struct.log_data** %5, align 8
  %44 = getelementptr inbounds %struct.log_data, %struct.log_data* %43, i32 0, i32 1
  store %struct.log_data* null, %struct.log_data** %44, align 8
  %45 = load %struct.procdata*, %struct.procdata** %6, align 8
  %46 = load %struct.log_data*, %struct.log_data** %5, align 8
  %47 = getelementptr inbounds %struct.log_data, %struct.log_data* %46, i32 0, i32 2
  store %struct.procdata* %45, %struct.procdata** %47, align 8
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 0
  %50 = load i64, i64* %7, align 8
  %51 = call i32 @spin_lock_irqsave(i32* %49, i64 %50)
  %52 = load %struct.procdata*, %struct.procdata** %6, align 8
  %53 = getelementptr inbounds %struct.procdata, %struct.procdata* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.log_data*, %struct.log_data** %5, align 8
  %56 = getelementptr inbounds %struct.log_data, %struct.log_data* %55, i32 0, i32 0
  store i64 %54, i64* %56, align 8
  %57 = load %struct.procdata*, %struct.procdata** %6, align 8
  %58 = getelementptr inbounds %struct.procdata, %struct.procdata* %57, i32 0, i32 2
  %59 = load %struct.log_data*, %struct.log_data** %58, align 8
  %60 = icmp ne %struct.log_data* %59, null
  br i1 %60, label %65, label %61

61:                                               ; preds = %37
  %62 = load %struct.log_data*, %struct.log_data** %5, align 8
  %63 = load %struct.procdata*, %struct.procdata** %6, align 8
  %64 = getelementptr inbounds %struct.procdata, %struct.procdata* %63, i32 0, i32 2
  store %struct.log_data* %62, %struct.log_data** %64, align 8
  br label %71

65:                                               ; preds = %37
  %66 = load %struct.log_data*, %struct.log_data** %5, align 8
  %67 = load %struct.procdata*, %struct.procdata** %6, align 8
  %68 = getelementptr inbounds %struct.procdata, %struct.procdata* %67, i32 0, i32 3
  %69 = load %struct.log_data*, %struct.log_data** %68, align 8
  %70 = getelementptr inbounds %struct.log_data, %struct.log_data* %69, i32 0, i32 1
  store %struct.log_data* %66, %struct.log_data** %70, align 8
  br label %71

71:                                               ; preds = %65, %61
  %72 = load %struct.log_data*, %struct.log_data** %5, align 8
  %73 = load %struct.procdata*, %struct.procdata** %6, align 8
  %74 = getelementptr inbounds %struct.procdata, %struct.procdata* %73, i32 0, i32 3
  store %struct.log_data* %72, %struct.log_data** %74, align 8
  br label %75

75:                                               ; preds = %112, %71
  %76 = load %struct.procdata*, %struct.procdata** %6, align 8
  %77 = getelementptr inbounds %struct.procdata, %struct.procdata* %76, i32 0, i32 2
  %78 = load %struct.log_data*, %struct.log_data** %77, align 8
  %79 = getelementptr inbounds %struct.log_data, %struct.log_data* %78, i32 0, i32 1
  %80 = load %struct.log_data*, %struct.log_data** %79, align 8
  %81 = icmp ne %struct.log_data* %80, null
  br i1 %81, label %82, label %113

82:                                               ; preds = %75
  %83 = load %struct.procdata*, %struct.procdata** %6, align 8
  %84 = getelementptr inbounds %struct.procdata, %struct.procdata* %83, i32 0, i32 2
  %85 = load %struct.log_data*, %struct.log_data** %84, align 8
  %86 = getelementptr inbounds %struct.log_data, %struct.log_data* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp sle i64 %87, 0
  br i1 %88, label %89, label %111

89:                                               ; preds = %82
  %90 = load %struct.procdata*, %struct.procdata** %6, align 8
  %91 = getelementptr inbounds %struct.procdata, %struct.procdata* %90, i32 0, i32 2
  %92 = load %struct.log_data*, %struct.log_data** %91, align 8
  %93 = getelementptr inbounds %struct.log_data, %struct.log_data* %92, i32 0, i32 1
  %94 = load %struct.log_data*, %struct.log_data** %93, align 8
  %95 = getelementptr inbounds %struct.log_data, %struct.log_data* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = icmp sle i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %89
  %99 = load %struct.procdata*, %struct.procdata** %6, align 8
  %100 = getelementptr inbounds %struct.procdata, %struct.procdata* %99, i32 0, i32 2
  %101 = load %struct.log_data*, %struct.log_data** %100, align 8
  store %struct.log_data* %101, %struct.log_data** %5, align 8
  %102 = load %struct.procdata*, %struct.procdata** %6, align 8
  %103 = getelementptr inbounds %struct.procdata, %struct.procdata* %102, i32 0, i32 2
  %104 = load %struct.log_data*, %struct.log_data** %103, align 8
  %105 = getelementptr inbounds %struct.log_data, %struct.log_data* %104, i32 0, i32 1
  %106 = load %struct.log_data*, %struct.log_data** %105, align 8
  %107 = load %struct.procdata*, %struct.procdata** %6, align 8
  %108 = getelementptr inbounds %struct.procdata, %struct.procdata* %107, i32 0, i32 2
  store %struct.log_data* %106, %struct.log_data** %108, align 8
  %109 = load %struct.log_data*, %struct.log_data** %5, align 8
  %110 = call i32 @kfree(%struct.log_data* %109)
  br label %112

111:                                              ; preds = %89, %82
  br label %113

112:                                              ; preds = %98
  br label %75

113:                                              ; preds = %111, %75
  %114 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %115 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %114, i32 0, i32 0
  %116 = load i64, i64* %7, align 8
  %117 = call i32 @spin_unlock_irqrestore(i32* %115, i64 %116)
  %118 = load %struct.procdata*, %struct.procdata** %6, align 8
  %119 = getelementptr inbounds %struct.procdata, %struct.procdata* %118, i32 0, i32 1
  %120 = call i32 @wake_up_interruptible(i32* %119)
  br label %121

121:                                              ; preds = %113, %36, %28, %22, %17, %13
  ret void
}

declare dso_local %struct.log_data* @kmalloc(i64, i32) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @kfree(%struct.log_data*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @wake_up_interruptible(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
