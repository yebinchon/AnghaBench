; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_close.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_synclink_gt.c_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_struct = type { %struct.TYPE_5__*, i32, %struct.slgt_info* }
%struct.TYPE_5__ = type { i32 }
%struct.slgt_info = type { %struct.TYPE_6__, i32, i32 }
%struct.TYPE_6__ = type { i32, i32*, i32 }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"%s close entry, count=%d\0A\00", align 1
@.str.2 = private unnamed_addr constant [25 x i8] c"%s close exit, count=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_struct*, %struct.file*)* @close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @close(%struct.tty_struct* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.tty_struct*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.slgt_info*, align 8
  store %struct.tty_struct* %0, %struct.tty_struct** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %7 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %6, i32 0, i32 2
  %8 = load %struct.slgt_info*, %struct.slgt_info** %7, align 8
  store %struct.slgt_info* %8, %struct.slgt_info** %5, align 8
  %9 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %10 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %11 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = call i64 @sanity_check(%struct.slgt_info* %9, i32 %12, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  br label %80

16:                                               ; preds = %2
  %17 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %18 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %17, i32 0, i32 2
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %21 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = sext i32 %23 to i64
  %25 = inttoptr i64 %24 to i8*
  %26 = call i32 @DBGINFO(i8* %25)
  %27 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %28 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %27, i32 0, i32 0
  %29 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %30 = load %struct.file*, %struct.file** %4, align 8
  %31 = call i64 @tty_port_close_start(%struct.TYPE_6__* %28, %struct.tty_struct* %29, %struct.file* %30)
  %32 = icmp eq i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %16
  br label %67

34:                                               ; preds = %16
  %35 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %36 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %36, i32 0, i32 2
  %38 = call i32 @mutex_lock(i32* %37)
  %39 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %40 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %39, i32 0, i32 0
  %41 = call i64 @tty_port_initialized(%struct.TYPE_6__* %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %49

43:                                               ; preds = %34
  %44 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %45 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %46 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @wait_until_sent(%struct.tty_struct* %44, i32 %47)
  br label %49

49:                                               ; preds = %43, %34
  %50 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %51 = call i32 @flush_buffer(%struct.tty_struct* %50)
  %52 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %53 = call i32 @tty_ldisc_flush(%struct.tty_struct* %52)
  %54 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %55 = call i32 @shutdown(%struct.slgt_info* %54)
  %56 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %57 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %57, i32 0, i32 2
  %59 = call i32 @mutex_unlock(i32* %58)
  %60 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %61 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %60, i32 0, i32 0
  %62 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %63 = call i32 @tty_port_close_end(%struct.TYPE_6__* %61, %struct.tty_struct* %62)
  %64 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %65 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %65, i32 0, i32 1
  store i32* null, i32** %66, align 8
  br label %67

67:                                               ; preds = %49, %33
  %68 = load %struct.tty_struct*, %struct.tty_struct** %3, align 8
  %69 = getelementptr inbounds %struct.tty_struct, %struct.tty_struct* %68, i32 0, i32 0
  %70 = load %struct.TYPE_5__*, %struct.TYPE_5__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.slgt_info*, %struct.slgt_info** %5, align 8
  %74 = getelementptr inbounds %struct.slgt_info, %struct.slgt_info* %73, i32 0, i32 0
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 @DBGINFO(i8* %78)
  br label %80

80:                                               ; preds = %67, %15
  ret void
}

declare dso_local i64 @sanity_check(%struct.slgt_info*, i32, i8*) #1

declare dso_local i32 @DBGINFO(i8*) #1

declare dso_local i64 @tty_port_close_start(%struct.TYPE_6__*, %struct.tty_struct*, %struct.file*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i64 @tty_port_initialized(%struct.TYPE_6__*) #1

declare dso_local i32 @wait_until_sent(%struct.tty_struct*, i32) #1

declare dso_local i32 @flush_buffer(%struct.tty_struct*) #1

declare dso_local i32 @tty_ldisc_flush(%struct.tty_struct*) #1

declare dso_local i32 @shutdown(%struct.slgt_info*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @tty_port_close_end(%struct.TYPE_6__*, %struct.tty_struct*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
