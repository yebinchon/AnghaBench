; ModuleID = '/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/tee/optee/extr_supp.c_optee_supp_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.optee_supp = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @optee_supp_init(%struct.optee_supp* %0) #0 {
  %2 = alloca %struct.optee_supp*, align 8
  store %struct.optee_supp* %0, %struct.optee_supp** %2, align 8
  %3 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %4 = call i32 @memset(%struct.optee_supp* %3, i32 0, i32 20)
  %5 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %6 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %5, i32 0, i32 4
  %7 = call i32 @mutex_init(i32* %6)
  %8 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %9 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %8, i32 0, i32 3
  %10 = call i32 @init_completion(i32* %9)
  %11 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %12 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %11, i32 0, i32 2
  %13 = call i32 @idr_init(i32* %12)
  %14 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %15 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %14, i32 0, i32 1
  %16 = call i32 @INIT_LIST_HEAD(i32* %15)
  %17 = load %struct.optee_supp*, %struct.optee_supp** %2, align 8
  %18 = getelementptr inbounds %struct.optee_supp, %struct.optee_supp* %17, i32 0, i32 0
  store i32 -1, i32* %18, align 4
  ret void
}

declare dso_local i32 @memset(%struct.optee_supp*, i32, i32) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @init_completion(i32*) #1

declare dso_local i32 @idr_init(i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
