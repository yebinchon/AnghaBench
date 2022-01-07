; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_putchar.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_con3215.c_raw3215_putchar.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.raw3215_info = type { i32, i8*, i64, i32, i32, i32 }

@TAB_STOP_SIZE = common dso_local global i32 0, align 4
@_ascebc = common dso_local global i64* null, align 8
@RAW3215_BUFFER_SIZE = common dso_local global i32 0, align 4
@RAW3215_WORKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.raw3215_info*, i8)* @raw3215_putchar to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @raw3215_putchar(%struct.raw3215_info* %0, i8 zeroext %1) #0 {
  %3 = alloca %struct.raw3215_info*, align 8
  %4 = alloca i8, align 1
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.raw3215_info* %0, %struct.raw3215_info** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %9 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %8, i32 0, i32 4
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @get_ccwdev_lock(i32 %10)
  %12 = load i64, i64* %5, align 8
  %13 = call i32 @spin_lock_irqsave(i32 %11, i64 %12)
  %14 = load i8, i8* %4, align 1
  %15 = zext i8 %14 to i32
  %16 = icmp eq i32 %15, 9
  br i1 %16, label %17, label %30

17:                                               ; preds = %2
  %18 = load i32, i32* @TAB_STOP_SIZE, align 4
  %19 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %20 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i32, i32* @TAB_STOP_SIZE, align 4
  %23 = urem i32 %21, %22
  %24 = sub i32 %18, %23
  store i32 %24, i32* %6, align 4
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %27 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = add i32 %28, %25
  store i32 %29, i32* %27, align 8
  store i8 32, i8* %4, align 1
  br label %43

30:                                               ; preds = %2
  %31 = load i8, i8* %4, align 1
  %32 = zext i8 %31 to i32
  %33 = icmp eq i32 %32, 10
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %35 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %36 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %35, i32 0, i32 0
  store i32 0, i32* %36, align 8
  br label %42

37:                                               ; preds = %30
  store i32 1, i32* %6, align 4
  %38 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %39 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = add i32 %40, 1
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %37, %34
  br label %43

43:                                               ; preds = %42, %17
  %44 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %45 = load i32, i32* %6, align 4
  %46 = call i32 @raw3215_make_room(%struct.raw3215_info* %44, i32 %45)
  store i32 0, i32* %7, align 4
  br label %47

47:                                               ; preds = %80, %43
  %48 = load i32, i32* %7, align 4
  %49 = load i32, i32* %6, align 4
  %50 = icmp ult i32 %48, %49
  br i1 %50, label %51, label %83

51:                                               ; preds = %47
  %52 = load i64*, i64** @_ascebc, align 8
  %53 = load i8, i8* %4, align 1
  %54 = zext i8 %53 to i32
  %55 = sext i32 %54 to i64
  %56 = getelementptr inbounds i64, i64* %52, i64 %55
  %57 = load i64, i64* %56, align 8
  %58 = trunc i64 %57 to i8
  %59 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %60 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %59, i32 0, i32 1
  %61 = load i8*, i8** %60, align 8
  %62 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %63 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %62, i32 0, i32 2
  %64 = load i64, i64* %63, align 8
  %65 = getelementptr inbounds i8, i8* %61, i64 %64
  store i8 %58, i8* %65, align 1
  %66 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %67 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %66, i32 0, i32 2
  %68 = load i64, i64* %67, align 8
  %69 = add i64 %68, 1
  %70 = load i32, i32* @RAW3215_BUFFER_SIZE, align 4
  %71 = sub nsw i32 %70, 1
  %72 = sext i32 %71 to i64
  %73 = and i64 %69, %72
  %74 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %75 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %74, i32 0, i32 2
  store i64 %73, i64* %75, align 8
  %76 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %77 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %76, i32 0, i32 5
  %78 = load i32, i32* %77, align 8
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %77, align 8
  br label %80

80:                                               ; preds = %51
  %81 = load i32, i32* %7, align 4
  %82 = add i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %47

83:                                               ; preds = %47
  %84 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %85 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %84, i32 0, i32 3
  %86 = load i32, i32* %85, align 8
  %87 = load i32, i32* @RAW3215_WORKING, align 4
  %88 = and i32 %86, %87
  %89 = icmp ne i32 %88, 0
  br i1 %89, label %95, label %90

90:                                               ; preds = %83
  %91 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %92 = call i32 @raw3215_mk_write_req(%struct.raw3215_info* %91)
  %93 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %94 = call i32 @raw3215_try_io(%struct.raw3215_info* %93)
  br label %95

95:                                               ; preds = %90, %83
  %96 = load %struct.raw3215_info*, %struct.raw3215_info** %3, align 8
  %97 = getelementptr inbounds %struct.raw3215_info, %struct.raw3215_info* %96, i32 0, i32 4
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @get_ccwdev_lock(i32 %98)
  %100 = load i64, i64* %5, align 8
  %101 = call i32 @spin_unlock_irqrestore(i32 %99, i64 %100)
  ret void
}

declare dso_local i32 @spin_lock_irqsave(i32, i64) #1

declare dso_local i32 @get_ccwdev_lock(i32) #1

declare dso_local i32 @raw3215_make_room(%struct.raw3215_info*, i32) #1

declare dso_local i32 @raw3215_mk_write_req(%struct.raw3215_info*) #1

declare dso_local i32 @raw3215_try_io(%struct.raw3215_info*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
