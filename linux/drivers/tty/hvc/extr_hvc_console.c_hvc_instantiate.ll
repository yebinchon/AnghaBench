; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_instantiate.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_instantiate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }
%struct.hvc_struct = type { i32 }

@MAX_NR_HVC_CONSOLES = common dso_local global i32 0, align 4
@vtermnos = common dso_local global i32* null, align 8
@cons_ops = common dso_local global %struct.hv_ops** null, align 8
@last_hvc = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hvc_instantiate(i32 %0, i32 %1, %struct.hv_ops* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.hv_ops*, align 8
  %8 = alloca %struct.hvc_struct*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.hv_ops* %2, %struct.hv_ops** %7, align 8
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %3
  %12 = load i32, i32* %6, align 4
  %13 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %14 = icmp sge i32 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %3
  store i32 -1, i32* %4, align 4
  br label %52

16:                                               ; preds = %11
  %17 = load i32*, i32** @vtermnos, align 8
  %18 = load i32, i32* %6, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds i32, i32* %17, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %24

23:                                               ; preds = %16
  store i32 -1, i32* %4, align 4
  br label %52

24:                                               ; preds = %16
  %25 = load i32, i32* %6, align 4
  %26 = call %struct.hvc_struct* @hvc_get_by_index(i32 %25)
  store %struct.hvc_struct* %26, %struct.hvc_struct** %8, align 8
  %27 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %28 = icmp ne %struct.hvc_struct* %27, null
  br i1 %28, label %29, label %33

29:                                               ; preds = %24
  %30 = load %struct.hvc_struct*, %struct.hvc_struct** %8, align 8
  %31 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %30, i32 0, i32 0
  %32 = call i32 @tty_port_put(i32* %31)
  store i32 -1, i32* %4, align 4
  br label %52

33:                                               ; preds = %24
  %34 = load i32, i32* %5, align 4
  %35 = load i32*, i32** @vtermnos, align 8
  %36 = load i32, i32* %6, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds i32, i32* %35, i64 %37
  store i32 %34, i32* %38, align 4
  %39 = load %struct.hv_ops*, %struct.hv_ops** %7, align 8
  %40 = load %struct.hv_ops**, %struct.hv_ops*** @cons_ops, align 8
  %41 = load i32, i32* %6, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.hv_ops*, %struct.hv_ops** %40, i64 %42
  store %struct.hv_ops* %39, %struct.hv_ops** %43, align 8
  %44 = load i32, i32* @last_hvc, align 4
  %45 = load i32, i32* %6, align 4
  %46 = icmp slt i32 %44, %45
  br i1 %46, label %47, label %49

47:                                               ; preds = %33
  %48 = load i32, i32* %6, align 4
  store i32 %48, i32* @last_hvc, align 4
  br label %49

49:                                               ; preds = %47, %33
  %50 = load i32, i32* %6, align 4
  %51 = call i32 @hvc_check_console(i32 %50)
  store i32 0, i32* %4, align 4
  br label %52

52:                                               ; preds = %49, %29, %23, %15
  %53 = load i32, i32* %4, align 4
  ret i32 %53
}

declare dso_local %struct.hvc_struct* @hvc_get_by_index(i32) #1

declare dso_local i32 @tty_port_put(i32*) #1

declare dso_local i32 @hvc_check_console(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
