; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_dimm_desc.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvdimm/extr_bus.c_nd_cmd_dimm_desc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nd_cmd_desc = type { i32 }

@__nd_cmd_dimm_descs = common dso_local global %struct.nd_cmd_desc* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nd_cmd_desc* @nd_cmd_dimm_desc(i32 %0) #0 {
  %2 = alloca %struct.nd_cmd_desc*, align 8
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** @__nd_cmd_dimm_descs, align 8
  %6 = call i32 @ARRAY_SIZE(%struct.nd_cmd_desc* %5)
  %7 = icmp slt i32 %4, %6
  br i1 %7, label %8, label %13

8:                                                ; preds = %1
  %9 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** @__nd_cmd_dimm_descs, align 8
  %10 = load i32, i32* %3, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.nd_cmd_desc, %struct.nd_cmd_desc* %9, i64 %11
  store %struct.nd_cmd_desc* %12, %struct.nd_cmd_desc** %2, align 8
  br label %14

13:                                               ; preds = %1
  store %struct.nd_cmd_desc* null, %struct.nd_cmd_desc** %2, align 8
  br label %14

14:                                               ; preds = %13, %8
  %15 = load %struct.nd_cmd_desc*, %struct.nd_cmd_desc** %2, align 8
  ret %struct.nd_cmd_desc* %15
}

declare dso_local i32 @ARRAY_SIZE(%struct.nd_cmd_desc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
