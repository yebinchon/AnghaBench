; ModuleID = '/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/sbus/char/extr_oradax.c_dax_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.file = type { i32* }
%struct.dax_ctx = type { i64, i32, i32, %struct.dax_ctx*, %struct.dax_ctx* }

@DAX_CA_ELEMS = common dso_local global i32 0, align 4
@CCA_STAT_NOT_COMPLETED = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"CCB[%d] not completed\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"CCBs: %d good, %d bad\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @dax_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dax_close(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.dax_ctx*, align 8
  %6 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %7 = load %struct.file*, %struct.file** %4, align 8
  %8 = getelementptr inbounds %struct.file, %struct.file* %7, i32 0, i32 0
  %9 = load i32*, i32** %8, align 8
  %10 = bitcast i32* %9 to %struct.dax_ctx*
  store %struct.dax_ctx* %10, %struct.dax_ctx** %5, align 8
  %11 = load %struct.file*, %struct.file** %4, align 8
  %12 = getelementptr inbounds %struct.file, %struct.file* %11, i32 0, i32 0
  store i32* null, i32** %12, align 8
  store i32 0, i32* %6, align 4
  br label %13

13:                                               ; preds = %38, %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @DAX_CA_ELEMS, align 4
  %16 = icmp slt i32 %14, %15
  br i1 %16, label %17, label %41

17:                                               ; preds = %13
  %18 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %19 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %18, i32 0, i32 3
  %20 = load %struct.dax_ctx*, %struct.dax_ctx** %19, align 8
  %21 = load i32, i32* %6, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %20, i64 %22
  %24 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @CCA_STAT_NOT_COMPLETED, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %34

28:                                               ; preds = %17
  %29 = load i32, i32* %6, align 4
  %30 = call i32 @dax_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32 %29)
  %31 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = call i32 @dax_ccb_wait(%struct.dax_ctx* %31, i32 %32)
  br label %34

34:                                               ; preds = %28, %17
  %35 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %36 = load i32, i32* %6, align 4
  %37 = call i32 @dax_unlock_pages(%struct.dax_ctx* %35, i32 %36, i32 1)
  br label %38

38:                                               ; preds = %34
  %39 = load i32, i32* %6, align 4
  %40 = add nsw i32 %39, 1
  store i32 %40, i32* %6, align 4
  br label %13

41:                                               ; preds = %13
  %42 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %43 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %42, i32 0, i32 4
  %44 = load %struct.dax_ctx*, %struct.dax_ctx** %43, align 8
  %45 = call i32 @kfree(%struct.dax_ctx* %44)
  %46 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %47 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %46, i32 0, i32 3
  %48 = load %struct.dax_ctx*, %struct.dax_ctx** %47, align 8
  %49 = call i32 @kfree(%struct.dax_ctx* %48)
  %50 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %51 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 4
  %53 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %54 = getelementptr inbounds %struct.dax_ctx, %struct.dax_ctx* %53, i32 0, i32 1
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dax_stat_dbg(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %55)
  %57 = load %struct.dax_ctx*, %struct.dax_ctx** %5, align 8
  %58 = call i32 @kfree(%struct.dax_ctx* %57)
  ret i32 0
}

declare dso_local i32 @dax_dbg(i8*, i32) #1

declare dso_local i32 @dax_ccb_wait(%struct.dax_ctx*, i32) #1

declare dso_local i32 @dax_unlock_pages(%struct.dax_ctx*, i32, i32) #1

declare dso_local i32 @kfree(%struct.dax_ctx*) #1

declare dso_local i32 @dax_stat_dbg(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
