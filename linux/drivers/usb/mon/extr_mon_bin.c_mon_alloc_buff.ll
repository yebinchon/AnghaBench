; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_alloc_buff.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/mon/extr_mon_bin.c_mon_alloc_buff.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mon_pgmap = type { i8*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mon_pgmap*, i32)* @mon_alloc_buff to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mon_alloc_buff(%struct.mon_pgmap* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.mon_pgmap*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  store %struct.mon_pgmap* %0, %struct.mon_pgmap** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %50, %2
  %9 = load i32, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = icmp slt i32 %9, %10
  br i1 %11, label %12, label %53

12:                                               ; preds = %8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i64 @get_zeroed_page(i32 %13)
  store i64 %14, i64* %7, align 8
  %15 = load i64, i64* %7, align 8
  %16 = icmp eq i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %12
  br label %18

18:                                               ; preds = %22, %17
  %19 = load i32, i32* %6, align 4
  %20 = add nsw i32 %19, -1
  store i32 %20, i32* %6, align 4
  %21 = icmp ne i32 %19, 0
  br i1 %21, label %22, label %31

22:                                               ; preds = %18
  %23 = load %struct.mon_pgmap*, %struct.mon_pgmap** %4, align 8
  %24 = load i32, i32* %6, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %23, i64 %25
  %27 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %26, i32 0, i32 0
  %28 = load i8*, i8** %27, align 8
  %29 = ptrtoint i8* %28 to i64
  %30 = call i32 @free_page(i64 %29)
  br label %18

31:                                               ; preds = %18
  %32 = load i32, i32* @ENOMEM, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %54

34:                                               ; preds = %12
  %35 = load i64, i64* %7, align 8
  %36 = inttoptr i64 %35 to i8*
  %37 = load %struct.mon_pgmap*, %struct.mon_pgmap** %4, align 8
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %37, i64 %39
  %41 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %40, i32 0, i32 0
  store i8* %36, i8** %41, align 8
  %42 = load i64, i64* %7, align 8
  %43 = inttoptr i64 %42 to i8*
  %44 = call i32 @virt_to_page(i8* %43)
  %45 = load %struct.mon_pgmap*, %struct.mon_pgmap** %4, align 8
  %46 = load i32, i32* %6, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %45, i64 %47
  %49 = getelementptr inbounds %struct.mon_pgmap, %struct.mon_pgmap* %48, i32 0, i32 1
  store i32 %44, i32* %49, align 8
  br label %50

50:                                               ; preds = %34
  %51 = load i32, i32* %6, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %6, align 4
  br label %8

53:                                               ; preds = %8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %53, %31
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @get_zeroed_page(i32) #1

declare dso_local i32 @free_page(i64) #1

declare dso_local i32 @virt_to_page(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
