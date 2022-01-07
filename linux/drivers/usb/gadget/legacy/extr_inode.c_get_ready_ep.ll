; ModuleID = '/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_get_ready_ep.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/usb/gadget/legacy/extr_inode.c_get_ready_ep.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ep_data = type { i32, i32 }

@O_NONBLOCK = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"%s: ep %p not available, state %d\0A\00", align 1
@shortname = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, %struct.ep_data*, i32)* @get_ready_ep to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_ready_ep(i32 %0, %struct.ep_data* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.ep_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.ep_data* %1, %struct.ep_data** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %5, align 4
  %10 = load i32, i32* @O_NONBLOCK, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %42

13:                                               ; preds = %3
  %14 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %15 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %14, i32 0, i32 1
  %16 = call i32 @mutex_trylock(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %13
  br label %36

19:                                               ; preds = %13
  %20 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %21 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = icmp ne i32 %22, 130
  br i1 %23, label %24, label %39

24:                                               ; preds = %19
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %29 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = icmp ne i32 %30, 129
  br i1 %31, label %32, label %39

32:                                               ; preds = %27, %24
  %33 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %34 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %33, i32 0, i32 1
  %35 = call i32 @mutex_unlock(i32* %34)
  br label %36

36:                                               ; preds = %32, %18
  %37 = load i32, i32* @EAGAIN, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %8, align 4
  br label %40

39:                                               ; preds = %27, %19
  store i32 0, i32* %8, align 4
  br label %40

40:                                               ; preds = %39, %36
  %41 = load i32, i32* %8, align 4
  store i32 %41, i32* %4, align 4
  br label %74

42:                                               ; preds = %3
  %43 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %44 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %43, i32 0, i32 1
  %45 = call i32 @mutex_lock_interruptible(i32* %44)
  store i32 %45, i32* %8, align 4
  %46 = load i32, i32* %8, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %4, align 4
  br label %74

50:                                               ; preds = %42
  %51 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %52 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  switch i32 %53, label %61 [
    i32 130, label %54
    i32 129, label %55
    i32 128, label %60
  ]

54:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %74

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %55
  store i32 0, i32* %4, align 4
  br label %74

59:                                               ; preds = %55
  br label %60

60:                                               ; preds = %50, %59
  br label %68

61:                                               ; preds = %50
  %62 = load i32, i32* @shortname, align 4
  %63 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %64 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %65 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @pr_debug(i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0), i32 %62, %struct.ep_data* %63, i32 %66)
  br label %68

68:                                               ; preds = %61, %60
  %69 = load %struct.ep_data*, %struct.ep_data** %6, align 8
  %70 = getelementptr inbounds %struct.ep_data, %struct.ep_data* %69, i32 0, i32 1
  %71 = call i32 @mutex_unlock(i32* %70)
  %72 = load i32, i32* @ENODEV, align 4
  %73 = sub nsw i32 0, %72
  store i32 %73, i32* %4, align 4
  br label %74

74:                                               ; preds = %68, %58, %54, %48, %40
  %75 = load i32, i32* %4, align 4
  ret i32 %75
}

declare dso_local i32 @mutex_trylock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @mutex_lock_interruptible(i32*) #1

declare dso_local i32 @pr_debug(i8*, i32, %struct.ep_data*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
