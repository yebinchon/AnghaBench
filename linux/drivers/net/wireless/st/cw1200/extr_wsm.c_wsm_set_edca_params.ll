; ModuleID = '/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_set_edca_params.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/net/wireless/st/cw1200/extr_wsm.c_wsm_set_edca_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cw1200_common = type { %struct.wsm_buf }
%struct.wsm_buf = type { i32 }
%struct.wsm_edca_params = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i32 }

@WSM_EDCA_PARAMS_REQ_ID = common dso_local global i32 0, align 4
@WSM_CMD_TIMEOUT = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @wsm_set_edca_params(%struct.cw1200_common* %0, %struct.wsm_edca_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.cw1200_common*, align 8
  %5 = alloca %struct.wsm_edca_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.wsm_buf*, align 8
  store %struct.cw1200_common* %0, %struct.cw1200_common** %4, align 8
  store %struct.wsm_edca_params* %1, %struct.wsm_edca_params** %5, align 8
  %8 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %9 = getelementptr inbounds %struct.cw1200_common, %struct.cw1200_common* %8, i32 0, i32 0
  store %struct.wsm_buf* %9, %struct.wsm_buf** %7, align 8
  %10 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %11 = call i32 @wsm_cmd_lock(%struct.cw1200_common* %10)
  %12 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %13 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %14 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %13, i32 0, i32 0
  %15 = load %struct.TYPE_2__*, %struct.TYPE_2__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i64 3
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 4
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @WSM_PUT16(%struct.wsm_buf* %12, i32 %18)
  %20 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %21 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %22 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i64 2
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @WSM_PUT16(%struct.wsm_buf* %20, i32 %26)
  %28 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %29 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %30 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %29, i32 0, i32 0
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 1
  %33 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @WSM_PUT16(%struct.wsm_buf* %28, i32 %34)
  %36 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %37 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %38 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %37, i32 0, i32 0
  %39 = load %struct.TYPE_2__*, %struct.TYPE_2__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %39, i64 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @WSM_PUT16(%struct.wsm_buf* %36, i32 %42)
  %44 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %45 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %46 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %45, i32 0, i32 0
  %47 = load %struct.TYPE_2__*, %struct.TYPE_2__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i64 3
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 3
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @WSM_PUT16(%struct.wsm_buf* %44, i32 %50)
  %52 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %53 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %54 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %53, i32 0, i32 0
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 2
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 3
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @WSM_PUT16(%struct.wsm_buf* %52, i32 %58)
  %60 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %61 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %62 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %61, i32 0, i32 0
  %63 = load %struct.TYPE_2__*, %struct.TYPE_2__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %63, i64 1
  %65 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %64, i32 0, i32 3
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @WSM_PUT16(%struct.wsm_buf* %60, i32 %66)
  %68 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %69 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %70 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %69, i32 0, i32 0
  %71 = load %struct.TYPE_2__*, %struct.TYPE_2__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %71, i64 0
  %73 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i32 0, i32 3
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @WSM_PUT16(%struct.wsm_buf* %68, i32 %74)
  %76 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %77 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %78 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i64 3
  %81 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %80, i32 0, i32 2
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @WSM_PUT8(%struct.wsm_buf* %76, i32 %82)
  %84 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %85 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %86 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %85, i32 0, i32 0
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i64 2
  %89 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %88, i32 0, i32 2
  %90 = load i32, i32* %89, align 4
  %91 = call i32 @WSM_PUT8(%struct.wsm_buf* %84, i32 %90)
  %92 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %93 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %94 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %93, i32 0, i32 0
  %95 = load %struct.TYPE_2__*, %struct.TYPE_2__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %95, i64 1
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @WSM_PUT8(%struct.wsm_buf* %92, i32 %98)
  %100 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %101 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %102 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i64 0
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @WSM_PUT8(%struct.wsm_buf* %100, i32 %106)
  %108 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %109 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %110 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %109, i32 0, i32 0
  %111 = load %struct.TYPE_2__*, %struct.TYPE_2__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %111, i64 3
  %113 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @WSM_PUT16(%struct.wsm_buf* %108, i32 %114)
  %116 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %117 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %118 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %117, i32 0, i32 0
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i64 2
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @WSM_PUT16(%struct.wsm_buf* %116, i32 %122)
  %124 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %125 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %126 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %125, i32 0, i32 0
  %127 = load %struct.TYPE_2__*, %struct.TYPE_2__** %126, align 8
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i64 1
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = call i32 @WSM_PUT16(%struct.wsm_buf* %124, i32 %130)
  %132 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %133 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %134 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %133, i32 0, i32 0
  %135 = load %struct.TYPE_2__*, %struct.TYPE_2__** %134, align 8
  %136 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %135, i64 0
  %137 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @WSM_PUT16(%struct.wsm_buf* %132, i32 %138)
  %140 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %141 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %142 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %141, i32 0, i32 0
  %143 = load %struct.TYPE_2__*, %struct.TYPE_2__** %142, align 8
  %144 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %143, i64 3
  %145 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i32 0, i32 0
  %146 = load i32, i32* %145, align 4
  %147 = call i32 @WSM_PUT32(%struct.wsm_buf* %140, i32 %146)
  %148 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %149 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %150 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %149, i32 0, i32 0
  %151 = load %struct.TYPE_2__*, %struct.TYPE_2__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %151, i64 2
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @WSM_PUT32(%struct.wsm_buf* %148, i32 %154)
  %156 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %157 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %158 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %157, i32 0, i32 0
  %159 = load %struct.TYPE_2__*, %struct.TYPE_2__** %158, align 8
  %160 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %159, i64 1
  %161 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 4
  %163 = call i32 @WSM_PUT32(%struct.wsm_buf* %156, i32 %162)
  %164 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %165 = load %struct.wsm_edca_params*, %struct.wsm_edca_params** %5, align 8
  %166 = getelementptr inbounds %struct.wsm_edca_params, %struct.wsm_edca_params* %165, i32 0, i32 0
  %167 = load %struct.TYPE_2__*, %struct.TYPE_2__** %166, align 8
  %168 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %167, i64 0
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 0
  %170 = load i32, i32* %169, align 4
  %171 = call i32 @WSM_PUT32(%struct.wsm_buf* %164, i32 %170)
  %172 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %173 = load %struct.wsm_buf*, %struct.wsm_buf** %7, align 8
  %174 = load i32, i32* @WSM_EDCA_PARAMS_REQ_ID, align 4
  %175 = load i32, i32* @WSM_CMD_TIMEOUT, align 4
  %176 = call i32 @wsm_cmd_send(%struct.cw1200_common* %172, %struct.wsm_buf* %173, i32* null, i32 %174, i32 %175)
  store i32 %176, i32* %6, align 4
  %177 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %178 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %177)
  %179 = load i32, i32* %6, align 4
  store i32 %179, i32* %3, align 4
  br label %185

180:                                              ; No predecessors!
  %181 = load %struct.cw1200_common*, %struct.cw1200_common** %4, align 8
  %182 = call i32 @wsm_cmd_unlock(%struct.cw1200_common* %181)
  %183 = load i32, i32* @ENOMEM, align 4
  %184 = sub nsw i32 0, %183
  store i32 %184, i32* %3, align 4
  br label %185

185:                                              ; preds = %180, %2
  %186 = load i32, i32* %3, align 4
  ret i32 %186
}

declare dso_local i32 @wsm_cmd_lock(%struct.cw1200_common*) #1

declare dso_local i32 @WSM_PUT16(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT8(%struct.wsm_buf*, i32) #1

declare dso_local i32 @WSM_PUT32(%struct.wsm_buf*, i32) #1

declare dso_local i32 @wsm_cmd_send(%struct.cw1200_common*, %struct.wsm_buf*, i32*, i32, i32) #1

declare dso_local i32 @wsm_cmd_unlock(%struct.cw1200_common*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
