; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_push.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_tty_audit.c_tty_audit_buf_push.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tty_audit_buf = type { i64, i32, i32 }

@audit_enabled = common dso_local global i64 0, align 8
@AUDIT_OFF = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [4 x i8] c"tty\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tty_audit_buf*)* @tty_audit_buf_push to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tty_audit_buf_push(%struct.tty_audit_buf* %0) #0 {
  %2 = alloca %struct.tty_audit_buf*, align 8
  store %struct.tty_audit_buf* %0, %struct.tty_audit_buf** %2, align 8
  %3 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %4 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %3, i32 0, i32 0
  %5 = load i64, i64* %4, align 8
  %6 = icmp eq i64 %5, 0
  br i1 %6, label %7, label %8

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load i64, i64* @audit_enabled, align 8
  %10 = load i64, i64* @AUDIT_OFF, align 8
  %11 = icmp eq i64 %9, %10
  br i1 %11, label %12, label %15

12:                                               ; preds = %8
  %13 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %14 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %13, i32 0, i32 0
  store i64 0, i64* %14, align 8
  br label %28

15:                                               ; preds = %8
  %16 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %17 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %20 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %23 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = call i32 @tty_audit_log(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %18, i32 %21, i64 %24)
  %26 = load %struct.tty_audit_buf*, %struct.tty_audit_buf** %2, align 8
  %27 = getelementptr inbounds %struct.tty_audit_buf, %struct.tty_audit_buf* %26, i32 0, i32 0
  store i64 0, i64* %27, align 8
  br label %28

28:                                               ; preds = %15, %12, %7
  ret void
}

declare dso_local i32 @tty_audit_log(i8*, i32, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
