; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/hvc/extr_hvc_console.c_hvc_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hv_ops = type { i32 }
%struct.hvc_struct = type { i64, i32, i32, i8*, i32, i32, %struct.hv_ops*, i32, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@hvc_needs_init = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@hvc_port_ops = common dso_local global i32 0, align 4
@hvc_set_winsz = common dso_local global i32 0, align 4
@hvc_structs_mutex = common dso_local global i32 0, align 4
@MAX_NR_HVC_CONSOLES = common dso_local global i32 0, align 4
@vtermnos = common dso_local global i64* null, align 8
@cons_ops = common dso_local global %struct.hv_ops** null, align 8
@last_hvc = common dso_local global i32 0, align 4
@hvc_structs = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hvc_struct* @hvc_alloc(i64 %0, i32 %1, %struct.hv_ops* %2, i32 %3) #0 {
  %5 = alloca %struct.hvc_struct*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hv_ops*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.hvc_struct*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.hv_ops* %2, %struct.hv_ops** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = call i64 @atomic_inc_not_zero(i32* @hvc_needs_init)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %4
  %16 = call i32 (...) @hvc_init()
  store i32 %16, i32* %12, align 4
  %17 = load i32, i32* %12, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %15
  %20 = load i32, i32* %12, align 4
  %21 = call %struct.hvc_struct* @ERR_PTR(i32 %20)
  store %struct.hvc_struct* %21, %struct.hvc_struct** %5, align 8
  br label %127

22:                                               ; preds = %15
  br label %23

23:                                               ; preds = %22, %4
  %24 = call i64 @ALIGN(i32 56, i32 8)
  %25 = load i32, i32* %9, align 4
  %26 = sext i32 %25 to i64
  %27 = add i64 %24, %26
  %28 = trunc i64 %27 to i32
  %29 = load i32, i32* @GFP_KERNEL, align 4
  %30 = call %struct.hvc_struct* @kzalloc(i32 %28, i32 %29)
  store %struct.hvc_struct* %30, %struct.hvc_struct** %10, align 8
  %31 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %32 = icmp ne %struct.hvc_struct* %31, null
  br i1 %32, label %37, label %33

33:                                               ; preds = %23
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = call %struct.hvc_struct* @ERR_PTR(i32 %35)
  store %struct.hvc_struct* %36, %struct.hvc_struct** %5, align 8
  br label %127

37:                                               ; preds = %23
  %38 = load i64, i64* %6, align 8
  %39 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %40 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %39, i32 0, i32 0
  store i64 %38, i64* %40, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %43 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 8
  %44 = load %struct.hv_ops*, %struct.hv_ops** %8, align 8
  %45 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %46 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %45, i32 0, i32 6
  store %struct.hv_ops* %44, %struct.hv_ops** %46, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %49 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %51 = bitcast %struct.hvc_struct* %50 to i8*
  %52 = call i64 @ALIGN(i32 56, i32 8)
  %53 = getelementptr inbounds i8, i8* %51, i64 %52
  %54 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %55 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %54, i32 0, i32 3
  store i8* %53, i8** %55, align 8
  %56 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %57 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %56, i32 0, i32 9
  %58 = call i32 @tty_port_init(%struct.TYPE_2__* %57)
  %59 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %60 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %59, i32 0, i32 9
  %61 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %60, i32 0, i32 0
  store i32* @hvc_port_ops, i32** %61, align 8
  %62 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %63 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %62, i32 0, i32 8
  %64 = load i32, i32* @hvc_set_winsz, align 4
  %65 = call i32 @INIT_WORK(i32* %63, i32 %64)
  %66 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %67 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %66, i32 0, i32 7
  %68 = call i32 @spin_lock_init(i32* %67)
  %69 = call i32 @mutex_lock(i32* @hvc_structs_mutex)
  store i32 0, i32* %11, align 4
  br label %70

70:                                               ; preds = %96, %37
  %71 = load i32, i32* %11, align 4
  %72 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %73 = icmp slt i32 %71, %72
  br i1 %73, label %74, label %99

74:                                               ; preds = %70
  %75 = load i64*, i64** @vtermnos, align 8
  %76 = load i32, i32* %11, align 4
  %77 = sext i32 %76 to i64
  %78 = getelementptr inbounds i64, i64* %75, i64 %77
  %79 = load i64, i64* %78, align 8
  %80 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %81 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %80, i32 0, i32 0
  %82 = load i64, i64* %81, align 8
  %83 = icmp eq i64 %79, %82
  br i1 %83, label %84, label %95

84:                                               ; preds = %74
  %85 = load %struct.hv_ops**, %struct.hv_ops*** @cons_ops, align 8
  %86 = load i32, i32* %11, align 4
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds %struct.hv_ops*, %struct.hv_ops** %85, i64 %87
  %89 = load %struct.hv_ops*, %struct.hv_ops** %88, align 8
  %90 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %91 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %90, i32 0, i32 6
  %92 = load %struct.hv_ops*, %struct.hv_ops** %91, align 8
  %93 = icmp eq %struct.hv_ops* %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %84
  br label %99

95:                                               ; preds = %84, %74
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %11, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %11, align 4
  br label %70

99:                                               ; preds = %94, %70
  %100 = load i32, i32* %11, align 4
  %101 = load i32, i32* @MAX_NR_HVC_CONSOLES, align 4
  %102 = icmp sge i32 %100, %101
  br i1 %102, label %103, label %106

103:                                              ; preds = %99
  %104 = load i32, i32* @last_hvc, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* @last_hvc, align 4
  store i32 %105, i32* %11, align 4
  br label %106

106:                                              ; preds = %103, %99
  %107 = load i32, i32* %11, align 4
  %108 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %109 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %108, i32 0, i32 4
  store i32 %107, i32* %109, align 8
  %110 = load %struct.hv_ops*, %struct.hv_ops** %8, align 8
  %111 = load %struct.hv_ops**, %struct.hv_ops*** @cons_ops, align 8
  %112 = load i32, i32* %11, align 4
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.hv_ops*, %struct.hv_ops** %111, i64 %113
  store %struct.hv_ops* %110, %struct.hv_ops** %114, align 8
  %115 = load i64, i64* %6, align 8
  %116 = load i64*, i64** @vtermnos, align 8
  %117 = load i32, i32* %11, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i64, i64* %116, i64 %118
  store i64 %115, i64* %119, align 8
  %120 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  %121 = getelementptr inbounds %struct.hvc_struct, %struct.hvc_struct* %120, i32 0, i32 5
  %122 = call i32 @list_add_tail(i32* %121, i32* @hvc_structs)
  %123 = call i32 @mutex_unlock(i32* @hvc_structs_mutex)
  %124 = load i32, i32* %11, align 4
  %125 = call i32 @hvc_check_console(i32 %124)
  %126 = load %struct.hvc_struct*, %struct.hvc_struct** %10, align 8
  store %struct.hvc_struct* %126, %struct.hvc_struct** %5, align 8
  br label %127

127:                                              ; preds = %106, %33, %19
  %128 = load %struct.hvc_struct*, %struct.hvc_struct** %5, align 8
  ret %struct.hvc_struct* %128
}

declare dso_local i64 @atomic_inc_not_zero(i32*) #1

declare dso_local i32 @hvc_init(...) #1

declare dso_local %struct.hvc_struct* @ERR_PTR(i32) #1

declare dso_local %struct.hvc_struct* @kzalloc(i32, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

declare dso_local i32 @tty_port_init(%struct.TYPE_2__*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @hvc_check_console(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
