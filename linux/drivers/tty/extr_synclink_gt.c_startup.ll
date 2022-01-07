; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_startup.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.slgt_info = type { %struct.TYPE_5__, i32, i64, i32, i64, i32 }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@.str = private unnamed_addr constant [12 x i8] c"%s startup\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [29 x i8] c"%s can't allocate tx buffer\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@TTY_IO_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.slgt_info*)* @startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @startup(%struct.slgt_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.slgt_info*, align 8
  store %struct.slgt_info* %0, %struct.slgt_info** %3, align 8
  %4 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %5 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %4, i32 0, i32 3
  %6 = load i32, i32* %5, align 8
  %7 = sext i32 %6 to i64
  %8 = inttoptr i64 %7 to i8*
  %9 = call i32 @DBGINFO(i8* %8)
  %10 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %11 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %10, i32 0, i32 0
  %12 = call i64 @tty_port_initialized(%struct.TYPE_5__* %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %67

15:                                               ; preds = %1
  %16 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %17 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %16, i32 0, i32 4
  %18 = load i64, i64* %17, align 8
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %42, label %20

20:                                               ; preds = %15
  %21 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %22 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %21, i32 0, i32 5
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* @GFP_KERNEL, align 4
  %25 = call i64 @kmalloc(i32 %23, i32 %24)
  %26 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %27 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %26, i32 0, i32 4
  store i64 %25, i64* %27, align 8
  %28 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %29 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %41, label %32

32:                                               ; preds = %20
  %33 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %34 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = sext i32 %35 to i64
  %37 = inttoptr i64 %36 to i8*
  %38 = call i32 @DBGERR(i8* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %67

41:                                               ; preds = %20
  br label %42

42:                                               ; preds = %41, %15
  %43 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %44 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %43, i32 0, i32 2
  store i64 0, i64* %44, align 8
  %45 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 1
  %47 = call i32 @memset(i32* %46, i32 0, i32 4)
  %48 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %49 = call i32 @change_params(%struct.slgt_info* %48)
  %50 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %51 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = load %struct.TYPE_4__*, %struct.TYPE_4__** %52, align 8
  %54 = icmp ne %struct.TYPE_4__* %53, null
  br i1 %54, label %55, label %63

55:                                               ; preds = %42
  %56 = load i32, i32* @TTY_IO_ERROR, align 4
  %57 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %58 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %57, i32 0, i32 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 0
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = call i32 @clear_bit(i32 %56, i32* %61)
  br label %63

63:                                               ; preds = %55, %42
  %64 = load %struct.slgt_info*, %struct.slgt_info** %3, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 0
  %66 = call i32 @tty_port_set_initialized(%struct.TYPE_5__* %65, i32 1)
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %63, %32, %14
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @tty_port_initialized(%struct.TYPE_5__*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i32 @DBGERR(i8*) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

declare dso_local i32 @change_params(%struct.slgt_info*) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @tty_port_set_initialized(%struct.TYPE_5__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
