; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfiles_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/function/extr_f_fs.c_ffs_epfiles_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ffs_epfile = type { i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ffs_epfile*, i32)* @ffs_epfiles_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ffs_epfiles_destroy(%struct.ffs_epfile* %0, i32 %1) #0 {
  %3 = alloca %struct.ffs_epfile*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ffs_epfile*, align 8
  store %struct.ffs_epfile* %0, %struct.ffs_epfile** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ffs_epfile*, %struct.ffs_epfile** %3, align 8
  store %struct.ffs_epfile* %6, %struct.ffs_epfile** %5, align 8
  %7 = call i32 (...) @ENTER()
  br label %8

8:                                                ; preds = %32, %2
  %9 = load i32, i32* %4, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %37

11:                                               ; preds = %8
  %12 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %13 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %12, i32 0, i32 1
  %14 = call i32 @mutex_is_locked(i32* %13)
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %17 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %20, label %31

20:                                               ; preds = %11
  %21 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %22 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = call i32 @d_delete(i32* %23)
  %25 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %26 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = call i32 @dput(i32* %27)
  %29 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %30 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %29, i32 0, i32 0
  store i32* null, i32** %30, align 8
  br label %31

31:                                               ; preds = %20, %11
  br label %32

32:                                               ; preds = %31
  %33 = load i32, i32* %4, align 4
  %34 = add i32 %33, -1
  store i32 %34, i32* %4, align 4
  %35 = load %struct.ffs_epfile*, %struct.ffs_epfile** %5, align 8
  %36 = getelementptr inbounds %struct.ffs_epfile, %struct.ffs_epfile* %35, i32 1
  store %struct.ffs_epfile* %36, %struct.ffs_epfile** %5, align 8
  br label %8

37:                                               ; preds = %8
  %38 = load %struct.ffs_epfile*, %struct.ffs_epfile** %3, align 8
  %39 = call i32 @kfree(%struct.ffs_epfile* %38)
  ret void
}

declare dso_local i32 @ENTER(...) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @mutex_is_locked(i32*) #1

declare dso_local i32 @d_delete(i32*) #1

declare dso_local i32 @dput(i32*) #1

declare dso_local i32 @kfree(%struct.ffs_epfile*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
