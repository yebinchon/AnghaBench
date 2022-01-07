; ModuleID = '/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_timer_read.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/parisc/extr_pdc_stable.c_pdcs_timer_read.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pdcspath_entry = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.kobject = type { i32 }
%struct.kobj_attribute = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@pdcspath_entry_primary = common dso_local global %struct.pdcspath_entry zeroinitializer, align 4
@.str = private unnamed_addr constant [4 x i8] c"%u\0A\00", align 1
@PF_TIMER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kobject*, %struct.kobj_attribute*, i8*)* @pdcs_timer_read to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdcs_timer_read(%struct.kobject* %0, %struct.kobj_attribute* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.kobject*, align 8
  %6 = alloca %struct.kobj_attribute*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.pdcspath_entry*, align 8
  store %struct.kobject* %0, %struct.kobject** %5, align 8
  store %struct.kobj_attribute* %1, %struct.kobj_attribute** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  store i8* %10, i8** %8, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = icmp ne i8* %11, null
  br i1 %12, label %16, label %13

13:                                               ; preds = %3
  %14 = load i32, i32* @EINVAL, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %4, align 4
  br label %52

16:                                               ; preds = %3
  store %struct.pdcspath_entry* @pdcspath_entry_primary, %struct.pdcspath_entry** %9, align 8
  %17 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %9, align 8
  %18 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %17, i32 0, i32 0
  %19 = call i32 @read_lock(i32* %18)
  %20 = load i8*, i8** %8, align 8
  %21 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %9, align 8
  %22 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* @PF_TIMER, align 4
  %26 = and i32 %24, %25
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %36

28:                                               ; preds = %16
  %29 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %9, align 8
  %30 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = load i32, i32* @PF_TIMER, align 4
  %34 = and i32 %32, %33
  %35 = shl i32 1, %34
  br label %37

36:                                               ; preds = %16
  br label %37

37:                                               ; preds = %36, %28
  %38 = phi i32 [ %35, %28 ], [ 0, %36 ]
  %39 = call i32 @sprintf(i8* %20, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %38)
  %40 = load i8*, i8** %8, align 8
  %41 = sext i32 %39 to i64
  %42 = getelementptr inbounds i8, i8* %40, i64 %41
  store i8* %42, i8** %8, align 8
  %43 = load %struct.pdcspath_entry*, %struct.pdcspath_entry** %9, align 8
  %44 = getelementptr inbounds %struct.pdcspath_entry, %struct.pdcspath_entry* %43, i32 0, i32 0
  %45 = call i32 @read_unlock(i32* %44)
  %46 = load i8*, i8** %8, align 8
  %47 = load i8*, i8** %7, align 8
  %48 = ptrtoint i8* %46 to i64
  %49 = ptrtoint i8* %47 to i64
  %50 = sub i64 %48, %49
  %51 = trunc i64 %50 to i32
  store i32 %51, i32* %4, align 4
  br label %52

52:                                               ; preds = %37, %13
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local i32 @read_lock(i32*) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @read_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
