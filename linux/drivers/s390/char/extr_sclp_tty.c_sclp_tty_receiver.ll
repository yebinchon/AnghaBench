; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_receiver.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/char/extr_sclp_tty.c_sclp_tty_receiver.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.evbuf_header = type { i32 }
%struct.gds_vector = type { i32 }

@GDS_ID_MDSMU = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.evbuf_header*)* @sclp_tty_receiver to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sclp_tty_receiver(%struct.evbuf_header* %0) #0 {
  %2 = alloca %struct.evbuf_header*, align 8
  %3 = alloca %struct.gds_vector*, align 8
  store %struct.evbuf_header* %0, %struct.evbuf_header** %2, align 8
  %4 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %5 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %4, i64 1
  %6 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %7 = bitcast %struct.evbuf_header* %6 to i8*
  %8 = load %struct.evbuf_header*, %struct.evbuf_header** %2, align 8
  %9 = getelementptr inbounds %struct.evbuf_header, %struct.evbuf_header* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr i8, i8* %7, i64 %11
  %13 = load i32, i32* @GDS_ID_MDSMU, align 4
  %14 = call %struct.gds_vector* @sclp_find_gds_vector(%struct.evbuf_header* %5, i8* %12, i32 %13)
  store %struct.gds_vector* %14, %struct.gds_vector** %3, align 8
  %15 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %16 = icmp ne %struct.gds_vector* %15, null
  br i1 %16, label %17, label %20

17:                                               ; preds = %1
  %18 = load %struct.gds_vector*, %struct.gds_vector** %3, align 8
  %19 = call i32 @sclp_eval_mdsmu(%struct.gds_vector* %18)
  br label %20

20:                                               ; preds = %17, %1
  ret void
}

declare dso_local %struct.gds_vector* @sclp_find_gds_vector(%struct.evbuf_header*, i8*, i32) #1

declare dso_local i32 @sclp_eval_mdsmu(%struct.gds_vector*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
