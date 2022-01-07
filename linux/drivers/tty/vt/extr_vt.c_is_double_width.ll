; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_is_double_width.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/vt/extr_vt.c_is_double_width.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.interval = type { i32, i32, i64, i64 }

@is_double_width.double_width = internal constant [12 x %struct.interval] [%struct.interval { i32 4352, i32 4447, i64 0, i64 0 }, %struct.interval { i32 9001, i32 9002, i64 0, i64 0 }, %struct.interval { i32 11904, i32 12350, i64 0, i64 0 }, %struct.interval { i32 12352, i32 42191, i64 0, i64 0 }, %struct.interval { i32 44032, i32 55203, i64 0, i64 0 }, %struct.interval { i32 63744, i32 64255, i64 0, i64 0 }, %struct.interval { i32 65040, i32 65049, i64 0, i64 0 }, %struct.interval { i32 65072, i32 65135, i64 0, i64 0 }, %struct.interval { i32 65280, i32 65376, i64 0, i64 0 }, %struct.interval { i32 65504, i32 65510, i64 0, i64 0 }, %struct.interval { i32 131072, i32 196605, i64 0, i64 0 }, %struct.interval { i32 196608, i32 262141, i64 0, i64 0 }], align 16
@ucs_cmp = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64)* @is_double_width to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_double_width(i64 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i64, align 8
  store i64 %0, i64* %3, align 8
  %4 = load i64, i64* %3, align 8
  %5 = load i64, i64* getelementptr inbounds ([12 x %struct.interval], [12 x %struct.interval]* @is_double_width.double_width, i64 0, i64 0, i32 2), align 8
  %6 = icmp slt i64 %4, %5
  br i1 %6, label %16, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @ARRAY_SIZE(%struct.interval* getelementptr inbounds ([12 x %struct.interval], [12 x %struct.interval]* @is_double_width.double_width, i64 0, i64 0))
  %10 = sub nsw i32 %9, 1
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds [12 x %struct.interval], [12 x %struct.interval]* @is_double_width.double_width, i64 0, i64 %11
  %13 = getelementptr inbounds %struct.interval, %struct.interval* %12, i32 0, i32 3
  %14 = load i64, i64* %13, align 8
  %15 = icmp sgt i64 %8, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %7, %1
  store i32 0, i32* %2, align 4
  br label %23

17:                                               ; preds = %7
  %18 = call i32 @ARRAY_SIZE(%struct.interval* getelementptr inbounds ([12 x %struct.interval], [12 x %struct.interval]* @is_double_width.double_width, i64 0, i64 0))
  %19 = load i32, i32* @ucs_cmp, align 4
  %20 = call i32* @bsearch(i64* %3, %struct.interval* getelementptr inbounds ([12 x %struct.interval], [12 x %struct.interval]* @is_double_width.double_width, i64 0, i64 0), i32 %18, i32 24, i32 %19)
  %21 = icmp ne i32* %20, null
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %2, align 4
  br label %23

23:                                               ; preds = %17, %16
  %24 = load i32, i32* %2, align 4
  ret i32 %24
}

declare dso_local i32 @ARRAY_SIZE(%struct.interval*) #1

declare dso_local i32* @bsearch(i64*, %struct.interval*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
