; ModuleID = '/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_write_byte.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/w1/masters/extr_omap_hdq.c_omap_w1_write_byte.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdq_data = type { i64, i32, i32 }

@W1_SKIP_ROM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"Could not acquire mutex\0A\00", align 1
@.str.1 = private unnamed_addr constant [27 x i8] c"TX failure:Ctrl status %x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i32)* @omap_w1_write_byte to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @omap_w1_write_byte(i8* %0, i32 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hdq_data*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load i8*, i8** %3, align 8
  %9 = bitcast i8* %8 to %struct.hdq_data*
  store %struct.hdq_data* %9, %struct.hdq_data** %5, align 8
  %10 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %11 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp eq i64 %12, 0
  br i1 %13, label %14, label %17

14:                                               ; preds = %2
  %15 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %16 = call i32 @omap_hdq_get(%struct.hdq_data* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %4, align 4
  %19 = load i32, i32* @W1_SKIP_ROM, align 4
  %20 = icmp eq i32 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %17
  %22 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %23 = call i32 @omap_hdq_break(%struct.hdq_data* %22)
  br label %24

24:                                               ; preds = %21, %17
  %25 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %26 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %25, i32 0, i32 1
  %27 = call i32 @mutex_lock_interruptible(i32* %26)
  store i32 %27, i32* %6, align 4
  %28 = load i32, i32* %6, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %35

30:                                               ; preds = %24
  %31 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %32 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = call i32 (i32, i8*, ...) @dev_dbg(i32 %33, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %78

35:                                               ; preds = %24
  %36 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %37 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = add nsw i64 %38, 1
  store i64 %39, i64* %37, align 8
  %40 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %41 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %40, i32 0, i32 1
  %42 = call i32 @mutex_unlock(i32* %41)
  %43 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @hdq_write_byte(%struct.hdq_data* %43, i32 %44, i32* %7)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %54

48:                                               ; preds = %35
  %49 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %50 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %7, align 4
  %53 = call i32 (i32, i8*, ...) @dev_dbg(i32 %51, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.1, i64 0, i64 0), i32 %52)
  br label %78

54:                                               ; preds = %35
  %55 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %56 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = icmp sgt i64 %57, 1
  br i1 %58, label %59, label %78

59:                                               ; preds = %54
  %60 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %61 = call i32 @omap_hdq_put(%struct.hdq_data* %60)
  %62 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %63 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %62, i32 0, i32 1
  %64 = call i32 @mutex_lock_interruptible(i32* %63)
  store i32 %64, i32* %6, align 4
  %65 = load i32, i32* %6, align 4
  %66 = icmp slt i32 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %59
  %68 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %69 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 4
  %71 = call i32 (i32, i8*, ...) @dev_dbg(i32 %70, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  br label %78

72:                                               ; preds = %59
  %73 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %74 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %73, i32 0, i32 0
  store i64 0, i64* %74, align 8
  %75 = load %struct.hdq_data*, %struct.hdq_data** %5, align 8
  %76 = getelementptr inbounds %struct.hdq_data, %struct.hdq_data* %75, i32 0, i32 1
  %77 = call i32 @mutex_unlock(i32* %76)
  br label %78

78:                                               ; preds = %30, %48, %67, %72, %54
  ret void
}

declare dso_local i32 @omap_hdq_get(%struct.hdq_data*) #1

declare dso_local i32 @omap_hdq_break(%struct.hdq_data*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hdq_write_byte(%struct.hdq_data*, i32, i32*) #1

declare dso_local i32 @omap_hdq_put(%struct.hdq_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
