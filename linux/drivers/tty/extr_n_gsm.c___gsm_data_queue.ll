; ModuleID = '/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c___gsm_data_queue.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tty/extr_n_gsm.c___gsm_data_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gsm_dlci = type { %struct.gsm_mux* }
%struct.gsm_mux = type { i64, i32, i32, i64 }
%struct.gsm_msg = type { i32*, i32, i32, i32, i32 }

@EA = common dso_local global i32 0, align 4
@INIT_FCS = common dso_local global i32 0, align 4
@UI = common dso_local global i32 0, align 4
@PF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"Q> \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gsm_dlci*, %struct.gsm_msg*)* @__gsm_data_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__gsm_data_queue(%struct.gsm_dlci* %0, %struct.gsm_msg* %1) #0 {
  %3 = alloca %struct.gsm_dlci*, align 8
  %4 = alloca %struct.gsm_msg*, align 8
  %5 = alloca %struct.gsm_mux*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  store %struct.gsm_dlci* %0, %struct.gsm_dlci** %3, align 8
  store %struct.gsm_msg* %1, %struct.gsm_msg** %4, align 8
  %8 = load %struct.gsm_dlci*, %struct.gsm_dlci** %3, align 8
  %9 = getelementptr inbounds %struct.gsm_dlci, %struct.gsm_dlci* %8, i32 0, i32 0
  %10 = load %struct.gsm_mux*, %struct.gsm_mux** %9, align 8
  store %struct.gsm_mux* %10, %struct.gsm_mux** %5, align 8
  %11 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %12 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %11, i32 0, i32 0
  %13 = load i32*, i32** %12, align 8
  store i32* %13, i32** %6, align 8
  %14 = load i32*, i32** %6, align 8
  %15 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %16 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = sext i32 %17 to i64
  %19 = getelementptr inbounds i32, i32* %14, i64 %18
  store i32* %19, i32** %7, align 8
  %20 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %21 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = icmp eq i64 %22, 0
  br i1 %23, label %24, label %53

24:                                               ; preds = %2
  %25 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %26 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = icmp slt i32 %27, 128
  br i1 %28, label %29, label %38

29:                                               ; preds = %24
  %30 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %31 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 8
  %33 = shl i32 %32, 1
  %34 = load i32, i32* @EA, align 4
  %35 = or i32 %33, %34
  %36 = load i32*, i32** %6, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 -1
  store i32* %37, i32** %6, align 8
  store i32 %35, i32* %37, align 4
  br label %52

38:                                               ; preds = %24
  %39 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %40 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = ashr i32 %41, 7
  %43 = load i32*, i32** %6, align 8
  %44 = getelementptr inbounds i32, i32* %43, i32 -1
  store i32* %44, i32** %6, align 8
  store i32 %42, i32* %44, align 4
  %45 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %46 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = and i32 %47, 127
  %49 = shl i32 %48, 1
  %50 = load i32*, i32** %6, align 8
  %51 = getelementptr inbounds i32, i32* %50, i32 -1
  store i32* %51, i32** %6, align 8
  store i32 %49, i32* %51, align 4
  br label %52

52:                                               ; preds = %38, %29
  br label %53

53:                                               ; preds = %52, %2
  %54 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %55 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 4
  %57 = load i32*, i32** %6, align 8
  %58 = getelementptr inbounds i32, i32* %57, i32 -1
  store i32* %58, i32** %6, align 8
  store i32 %56, i32* %58, align 4
  %59 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %60 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %59, i32 0, i32 3
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %73

63:                                               ; preds = %53
  %64 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %65 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 8
  %67 = shl i32 %66, 2
  %68 = or i32 %67, 2
  %69 = load i32, i32* @EA, align 4
  %70 = or i32 %68, %69
  %71 = load i32*, i32** %6, align 8
  %72 = getelementptr inbounds i32, i32* %71, i32 -1
  store i32* %72, i32** %6, align 8
  store i32 %70, i32* %72, align 4
  br label %82

73:                                               ; preds = %53
  %74 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %75 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %74, i32 0, i32 3
  %76 = load i32, i32* %75, align 8
  %77 = shl i32 %76, 2
  %78 = load i32, i32* @EA, align 4
  %79 = or i32 %77, %78
  %80 = load i32*, i32** %6, align 8
  %81 = getelementptr inbounds i32, i32* %80, i32 -1
  store i32* %81, i32** %6, align 8
  store i32 %79, i32* %81, align 4
  br label %82

82:                                               ; preds = %73, %63
  %83 = load i32, i32* @INIT_FCS, align 4
  %84 = load i32*, i32** %6, align 8
  %85 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %86 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32*, i32** %6, align 8
  %89 = ptrtoint i32* %87 to i64
  %90 = ptrtoint i32* %88 to i64
  %91 = sub i64 %89, %90
  %92 = sdiv exact i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @gsm_fcs_add_block(i32 %83, i32* %84, i32 %93)
  %95 = load i32*, i32** %7, align 8
  store i32 %94, i32* %95, align 4
  %96 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %97 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load i32, i32* @UI, align 4
  %100 = icmp eq i32 %98, %99
  br i1 %100, label %109, label %101

101:                                              ; preds = %82
  %102 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %103 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* @UI, align 4
  %106 = load i32, i32* @PF, align 4
  %107 = or i32 %105, %106
  %108 = icmp eq i32 %104, %107
  br i1 %108, label %109, label %120

109:                                              ; preds = %101, %82
  %110 = load i32*, i32** %7, align 8
  %111 = load i32, i32* %110, align 4
  %112 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %113 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %112, i32 0, i32 0
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %116 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @gsm_fcs_add_block(i32 %111, i32* %114, i32 %117)
  %119 = load i32*, i32** %7, align 8
  store i32 %118, i32* %119, align 4
  br label %120

120:                                              ; preds = %109, %101
  %121 = load i32*, i32** %7, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sub nsw i32 255, %122
  %124 = load i32*, i32** %7, align 8
  store i32 %123, i32* %124, align 4
  %125 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %126 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %125, i32 0, i32 3
  %127 = load i32, i32* %126, align 8
  %128 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %129 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %128, i32 0, i32 3
  %130 = load i64, i64* %129, align 8
  %131 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %132 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %131, i32 0, i32 2
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %135 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %134, i32 0, i32 0
  %136 = load i32*, i32** %135, align 8
  %137 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %138 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @gsm_print_packet(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), i32 %127, i64 %130, i32 %133, i32* %136, i32 %139)
  %141 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %142 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %141, i32 0, i32 0
  %143 = load i32*, i32** %142, align 8
  %144 = load i32*, i32** %6, align 8
  %145 = ptrtoint i32* %143 to i64
  %146 = ptrtoint i32* %144 to i64
  %147 = sub i64 %145, %146
  %148 = sdiv exact i64 %147, 4
  %149 = add nsw i64 %148, 1
  %150 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %151 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %150, i32 0, i32 1
  %152 = load i32, i32* %151, align 8
  %153 = sext i32 %152 to i64
  %154 = add nsw i64 %153, %149
  %155 = trunc i64 %154 to i32
  store i32 %155, i32* %151, align 8
  %156 = load i32*, i32** %6, align 8
  %157 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %158 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %157, i32 0, i32 0
  store i32* %156, i32** %158, align 8
  %159 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %160 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %159, i32 0, i32 4
  %161 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %162 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %161, i32 0, i32 2
  %163 = call i32 @list_add_tail(i32* %160, i32* %162)
  %164 = load %struct.gsm_msg*, %struct.gsm_msg** %4, align 8
  %165 = getelementptr inbounds %struct.gsm_msg, %struct.gsm_msg* %164, i32 0, i32 1
  %166 = load i32, i32* %165, align 8
  %167 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %168 = getelementptr inbounds %struct.gsm_mux, %struct.gsm_mux* %167, i32 0, i32 1
  %169 = load i32, i32* %168, align 8
  %170 = add nsw i32 %169, %166
  store i32 %170, i32* %168, align 8
  %171 = load %struct.gsm_mux*, %struct.gsm_mux** %5, align 8
  %172 = call i32 @gsm_data_kick(%struct.gsm_mux* %171)
  ret void
}

declare dso_local i32 @gsm_fcs_add_block(i32, i32*, i32) #1

declare dso_local i32 @gsm_print_packet(i8*, i32, i64, i32, i32*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @gsm_data_kick(%struct.gsm_mux*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
