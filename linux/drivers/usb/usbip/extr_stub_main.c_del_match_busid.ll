; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_del_match_busid.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/usbip/extr_stub_main.c_del_match_busid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64, i32, i32 }

@busid_table_lock = common dso_local global i32 0, align 4
@busid_table = common dso_local global %struct.TYPE_2__* null, align 8
@STUB_BUSID_OTHER = common dso_local global i64 0, align 8
@BUSID_SIZE = common dso_local global i32 0, align 4
@STUB_BUSID_ADDED = common dso_local global i64 0, align 8
@STUB_BUSID_REMOV = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @del_match_busid(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i32 -1, i32* %4, align 4
  %5 = call i32 @spin_lock(i32* @busid_table_lock)
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @get_busid_idx(i8* %6)
  store i32 %7, i32* %3, align 4
  %8 = load i32, i32* %3, align 4
  %9 = icmp slt i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %67

11:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %13 = load i32, i32* %3, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i64 %14
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 1
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @STUB_BUSID_OTHER, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %35

26:                                               ; preds = %11
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %28 = load i32, i32* %3, align 4
  %29 = sext i32 %28 to i64
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i64 %29
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @BUSID_SIZE, align 4
  %34 = call i32 @memset(i32 %32, i32 0, i32 %33)
  br label %35

35:                                               ; preds = %26, %11
  %36 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %37 = load i32, i32* %3, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i64 %38
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @STUB_BUSID_OTHER, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %60

44:                                               ; preds = %35
  %45 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %46 = load i32, i32* %3, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i64 %47
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 0
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @STUB_BUSID_ADDED, align 8
  %52 = icmp ne i64 %50, %51
  br i1 %52, label %53, label %60

53:                                               ; preds = %44
  %54 = load i64, i64* @STUB_BUSID_REMOV, align 8
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %56 = load i32, i32* %3, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  store i64 %54, i64* %59, align 8
  br label %60

60:                                               ; preds = %53, %44, %35
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** @busid_table, align 8
  %62 = load i32, i32* %3, align 4
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i64 %63
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %60, %10
  %68 = call i32 @spin_unlock(i32* @busid_table_lock)
  %69 = load i32, i32* %4, align 4
  ret i32 %69
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @get_busid_idx(i8*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
