; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_hvsi_get_chars.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_vio.c_hvterm_hvsi_get_chars.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hvterm_priv = type { i32 }

@hvterm_privs = common dso_local global %struct.hvterm_priv** null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i8*, i32)* @hvterm_hvsi_get_chars to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hvterm_hvsi_get_chars(i64 %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hvterm_priv*, align 8
  store i64 %0, i64* %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hvterm_priv**, %struct.hvterm_priv*** @hvterm_privs, align 8
  %10 = load i64, i64* %5, align 8
  %11 = getelementptr inbounds %struct.hvterm_priv*, %struct.hvterm_priv** %9, i64 %10
  %12 = load %struct.hvterm_priv*, %struct.hvterm_priv** %11, align 8
  store %struct.hvterm_priv* %12, %struct.hvterm_priv** %8, align 8
  %13 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %14 = icmp ne %struct.hvterm_priv* %13, null
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %26

20:                                               ; preds = %3
  %21 = load %struct.hvterm_priv*, %struct.hvterm_priv** %8, align 8
  %22 = getelementptr inbounds %struct.hvterm_priv, %struct.hvterm_priv* %21, i32 0, i32 0
  %23 = load i8*, i8** %6, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @hvsilib_get_chars(i32* %22, i8* %23, i32 %24)
  store i32 %25, i32* %4, align 4
  br label %26

26:                                               ; preds = %20, %19
  %27 = load i32, i32* %4, align 4
  ret i32 %27
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @hvsilib_get_chars(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
