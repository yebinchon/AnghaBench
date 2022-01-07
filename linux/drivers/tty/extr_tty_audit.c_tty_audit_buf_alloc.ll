; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_audit_buf = type { i64, i64, i32, i32, i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@N_TTY_BUF_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tty_audit_buf* ()* @tty_audit_buf_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tty_audit_buf* @tty_audit_buf_alloc() #0 {
  %1 = alloca %struct.tty_audit_buf*, align 8
  %2 = alloca %struct.tty_audit_buf*, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = call i8* @kmalloc(i32 32, i32 %3)
  %5 = bitcast i8* %4 to %struct.tty_audit_buf*
  store %struct.tty_audit_buf* %5, %struct.tty_audit_buf** %2, align 8
  %6 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %7 = icmp ne %struct.tty_audit_buf* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %0
  br label %35

9:                                                ; preds = %0
  %10 = load i32, i32* @N_TTY_BUF_SIZE, align 4
  %11 = load i32, i32* @GFP_KERNEL, align 4
  %12 = call i8* @kmalloc(i32 %10, i32 %11)
  %13 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %14 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %16 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %15, i32 0, i32 4
  %17 = load i8*, i8** %16, align 8
  %18 = icmp ne i8* %17, null
  br i1 %18, label %20, label %19

19:                                               ; preds = %9
  br label %32

20:                                               ; preds = %9
  %21 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %22 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %21, i32 0, i32 3
  %23 = call i32 @mutex_init(i32* %22)
  %24 = call i32 @MKDEV(i32 0, i32 0)
  %25 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %26 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %25, i32 0, i32 2
  store i32 %24, i32* %26, align 8
  %27 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %28 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %30 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %29, i32 0, i32 0
  store i64 0, i64* %30, align 8
  %31 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  store %struct.tty_audit_buf* %31, %struct.tty_audit_buf** %1, align 8
  br label %36

32:                                               ; preds = %19
  %33 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %34 = call i32 @kfree(%struct.tty_audit_buf* %33)
  br label %35

35:                                               ; preds = %32, %8
  store %struct.tty_audit_buf* null, %struct.tty_audit_buf** %1, align 8
  br label %36

36:                                               ; preds = %35, %20
  %37 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %1, align 8
  ret %struct.tty_audit_buf* %37
}

declare dso_local i8* @kmalloc(i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i32 @kfree(%struct.tty_audit_buf*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
