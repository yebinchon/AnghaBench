; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_modem.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c_gsm_control_modem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_mux = type { %struct.gsm_dlci** }
%struct.gsm_dlci = type { i32 }
%struct.tty_struct = type { i32 }

@NUM_DLCI = common dso_local global i32 0, align 4
@CMD_MSC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_mux*, i32*, i32)* @gsm_control_modem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @gsm_control_modem(%struct.gsm_mux* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.gsm_mux*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.gsm_dlci*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca %struct.tty_struct*, align 8
  store %struct.gsm_mux* %0, %struct.gsm_mux** %4, align 8
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  store i32 0, i32* %8, align 4
  store i32 0, i32* %9, align 4
  %14 = load i32, i32* %6, align 4
  store i32 %14, i32* %11, align 4
  %15 = load i32*, i32** %5, align 8
  store i32* %15, i32** %12, align 8
  br label %16

16:                                               ; preds = %28, %3
  %17 = load i32*, i32** %12, align 8
  %18 = getelementptr inbounds i32, i32* %17, i32 1
  store i32* %18, i32** %12, align 8
  %19 = load i32, i32* %17, align 4
  %20 = call i64 @gsm_read_ea(i32* %7, i32 %19)
  %21 = icmp eq i64 %20, 0
  br i1 %21, label %22, label %29

22:                                               ; preds = %16
  %23 = load i32, i32* %11, align 4
  %24 = add nsw i32 %23, -1
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %11, align 4
  %26 = icmp eq i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %123

28:                                               ; preds = %22
  br label %16

29:                                               ; preds = %16
  %30 = load i32, i32* %11, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %11, align 4
  %32 = load i32, i32* %11, align 4
  %33 = icmp sle i32 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %29
  br label %123

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  %37 = lshr i32 %36, 1
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %53, label %40

40:                                               ; preds = %35
  %41 = load i32, i32* %7, align 4
  %42 = load i32, i32* @NUM_DLCI, align 4
  %43 = icmp uge i32 %41, %42
  br i1 %43, label %53, label %44

44:                                               ; preds = %40
  %45 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %46 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %45, i32 0, i32 0
  %47 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %46, align 8
  %48 = load i32, i32* %7, align 4
  %49 = zext i32 %48 to i64
  %50 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %47, i64 %49
  %51 = load %struct.gsm_dlci*, %struct.gsm_dlci** %50, align 8
  %52 = icmp eq %struct.gsm_dlci* %51, null
  br i1 %52, label %53, label %54

53:                                               ; preds = %44, %40, %35
  br label %123

54:                                               ; preds = %44
  %55 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %56 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %55, i32 0, i32 0
  %57 = load %struct.gsm_dlci**, %struct.gsm_dlci*** %56, align 8
  %58 = load i32, i32* %7, align 4
  %59 = zext i32 %58 to i64
  %60 = getelementptr inbounds %struct.gsm_dlci*, %struct.gsm_dlci** %57, i64 %59
  %61 = load %struct.gsm_dlci*, %struct.gsm_dlci** %60, align 8
  store %struct.gsm_dlci* %61, %struct.gsm_dlci** %10, align 8
  br label %62

62:                                               ; preds = %74, %54
  %63 = load i32*, i32** %12, align 8
  %64 = getelementptr inbounds i32, i32* %63, i32 1
  store i32* %64, i32** %12, align 8
  %65 = load i32, i32* %63, align 4
  %66 = call i64 @gsm_read_ea(i32* %8, i32 %65)
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %75

68:                                               ; preds = %62
  %69 = load i32, i32* %11, align 4
  %70 = add nsw i32 %69, -1
  store i32 %70, i32* %11, align 4
  %71 = load i32, i32* %11, align 4
  %72 = icmp eq i32 %71, 0
  br i1 %72, label %73, label %74

73:                                               ; preds = %68
  br label %123

74:                                               ; preds = %68
  br label %62

75:                                               ; preds = %62
  %76 = load i32, i32* %11, align 4
  %77 = add nsw i32 %76, -1
  store i32 %77, i32* %11, align 4
  %78 = load i32, i32* %11, align 4
  %79 = icmp sgt i32 %78, 0
  br i1 %79, label %80, label %101

80:                                               ; preds = %75
  br label %81

81:                                               ; preds = %93, %80
  %82 = load i32*, i32** %12, align 8
  %83 = getelementptr inbounds i32, i32* %82, i32 1
  store i32* %83, i32** %12, align 8
  %84 = load i32, i32* %82, align 4
  %85 = call i64 @gsm_read_ea(i32* %9, i32 %84)
  %86 = icmp eq i64 %85, 0
  br i1 %86, label %87, label %94

87:                                               ; preds = %81
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, -1
  store i32 %89, i32* %11, align 4
  %90 = load i32, i32* %11, align 4
  %91 = icmp eq i32 %90, 0
  br i1 %91, label %92, label %93

92:                                               ; preds = %87
  br label %123

93:                                               ; preds = %87
  br label %81

94:                                               ; preds = %81
  %95 = load i32, i32* %8, align 4
  %96 = shl i32 %95, 7
  store i32 %96, i32* %8, align 4
  %97 = load i32, i32* %9, align 4
  %98 = and i32 %97, 127
  %99 = load i32, i32* %8, align 4
  %100 = or i32 %99, %98
  store i32 %100, i32* %8, align 4
  br label %101

101:                                              ; preds = %94, %75
  %102 = load %struct.gsm_dlci*, %struct.gsm_dlci** %10, align 8
  %103 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %102, i32 0, i32 0
  %104 = call %struct.tty_struct* @tty_port_tty_get(i32* %103)
  store %struct.tty_struct* %104, %struct.tty_struct** %13, align 8
  %105 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %106 = load %struct.gsm_dlci*, %struct.gsm_dlci** %10, align 8
  %107 = load i32, i32* %8, align 4
  %108 = load i32, i32* %6, align 4
  %109 = call i32 @gsm_process_modem(%struct.tty_struct* %105, %struct.gsm_dlci* %106, i32 %107, i32 %108)
  %110 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %111 = icmp ne %struct.tty_struct* %110, null
  br i1 %111, label %112, label %117

112:                                              ; preds = %101
  %113 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %114 = call i32 @tty_wakeup(%struct.tty_struct* %113)
  %115 = load %struct.tty_struct*, %struct.tty_struct** %13, align 8
  %116 = call i32 @tty_kref_put(%struct.tty_struct* %115)
  br label %117

117:                                              ; preds = %112, %101
  %118 = load %struct.gsm_mux*, %struct.gsm_mux** %4, align 8
  %119 = load i32, i32* @CMD_MSC, align 4
  %120 = load i32*, i32** %5, align 8
  %121 = load i32, i32* %6, align 4
  %122 = call i32 @gsm_control_reply(%struct.gsm_mux* %118, i32 %119, i32* %120, i32 %121)
  br label %123

123:                                              ; preds = %117, %92, %73, %53, %34, %27
  ret void
}

declare dso_local i64 @gsm_read_ea(i32*, i32) #1

declare dso_local %struct.tty_struct* @tty_port_tty_get(i32*) #1

declare dso_local i32 @gsm_process_modem(%struct.tty_struct*, %struct.gsm_dlci*, i32, i32) #1

declare dso_local i32 @tty_wakeup(%struct.tty_struct*) #1

declare dso_local i32 @tty_kref_put(%struct.tty_struct*) #1

declare dso_local i32 @gsm_control_reply(%struct.gsm_mux*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
