; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_eval_mdsmu.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_eval_mdsmu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gds_vector = type { i32 }

@GDS_ID_CPMSU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.gds_vector*)* @sclp_eval_mdsmu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_eval_mdsmu(%struct.gds_vector* %0) #0 {
  %2 = alloca %struct.gds_vector*, align 8
  store %struct.gds_vector* %0, %struct.gds_vector** %2, align 8
  %3 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %4 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %3, i64 1
  %5 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %6 = bitcast %struct.gds_vector* %5 to i8*
  %7 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %8 = getelementptr inbounds %struct.gds_vector, %struct.gds_vector* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = sext i32 %9 to i64
  %11 = getelementptr i8, i8* %6, i64 %10
  %12 = load i32, i32* @GDS_ID_CPMSU, align 4
  %13 = call %struct.gds_vector* @sclp_find_gds_vector(%struct.gds_vector* %4, i8* %11, i32 %12)
  store %struct.gds_vector* %13, %struct.gds_vector** %2, align 8
  %14 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %15 = icmp ne %struct.gds_vector* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %1
  %17 = load %struct.gds_vector*, %struct.gds_vector** %2, align 8
  %18 = call i32 @sclp_eval_cpmsu(%struct.gds_vector* %17)
  br label %19

19:                                               ; preds = %16, %1
  ret void
}

declare dso_local %struct.gds_vector* @sclp_find_gds_vector(%struct.gds_vector*, i8*, i32) #1

declare dso_local i32 @sclp_eval_cpmsu(%struct.gds_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
