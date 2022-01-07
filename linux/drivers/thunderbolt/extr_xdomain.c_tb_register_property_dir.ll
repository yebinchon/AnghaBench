; ModuleID = '/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_register_property_dir.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/thunderbolt/extr_xdomain.c_tb_register_property_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tb_property_dir = type { i32 }

@xdomain_property_dir = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@xdomain_lock = common dso_local global i32 0, align 4
@TB_PROPERTY_TYPE_DIRECTORY = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tb_register_property_dir(i8* %0, %struct.tb_property_dir* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.tb_property_dir*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.tb_property_dir* %1, %struct.tb_property_dir** %5, align 8
  %7 = load i32, i32* @xdomain_property_dir, align 4
  %8 = icmp ne i32 %7, 0
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i64 @WARN_ON(i32 %10)
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load i32, i32* @EAGAIN, align 4
  %15 = sub nsw i32 0, %14
  store i32 %15, i32* %3, align 4
  br label %58

16:                                               ; preds = %2
  %17 = load i8*, i8** %4, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %19, label %23

19:                                               ; preds = %16
  %20 = load i8*, i8** %4, align 8
  %21 = call i32 @strlen(i8* %20)
  %22 = icmp sgt i32 %21, 8
  br i1 %22, label %23, label %26

23:                                               ; preds = %19, %16
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %58

26:                                               ; preds = %19
  %27 = call i32 @mutex_lock(i32* @xdomain_lock)
  %28 = load i32, i32* @xdomain_property_dir, align 4
  %29 = load i8*, i8** %4, align 8
  %30 = load i32, i32* @TB_PROPERTY_TYPE_DIRECTORY, align 4
  %31 = call i64 @tb_property_find(i32 %28, i8* %29, i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %26
  %34 = load i32, i32* @EEXIST, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %6, align 4
  br label %55

36:                                               ; preds = %26
  %37 = load i32, i32* @xdomain_property_dir, align 4
  %38 = load i8*, i8** %4, align 8
  %39 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %40 = call i32 @tb_property_add_dir(i32 %37, i8* %38, %struct.tb_property_dir* %39)
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  br label %55

44:                                               ; preds = %36
  %45 = call i32 (...) @rebuild_property_block()
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i8*, i8** %4, align 8
  %50 = load %struct.tb_property_dir*, %struct.tb_property_dir** %5, align 8
  %51 = call i32 @remove_directory(i8* %49, %struct.tb_property_dir* %50)
  br label %55

52:                                               ; preds = %44
  %53 = call i32 @mutex_unlock(i32* @xdomain_lock)
  %54 = call i32 (...) @update_all_xdomains()
  store i32 0, i32* %3, align 4
  br label %58

55:                                               ; preds = %48, %43, %33
  %56 = call i32 @mutex_unlock(i32* @xdomain_lock)
  %57 = load i32, i32* %6, align 4
  store i32 %57, i32* %3, align 4
  br label %58

58:                                               ; preds = %55, %52, %23, %13
  %59 = load i32, i32* %3, align 4
  ret i32 %59
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tb_property_find(i32, i8*, i32) #1

declare dso_local i32 @tb_property_add_dir(i32, i8*, %struct.tb_property_dir*) #1

declare dso_local i32 @rebuild_property_block(...) #1

declare dso_local i32 @remove_directory(i8*, %struct.tb_property_dir*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @update_all_xdomains(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
