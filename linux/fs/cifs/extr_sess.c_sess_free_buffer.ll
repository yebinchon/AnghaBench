; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_sess.c_sess_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sess_data = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@CIFS_NO_BUFFER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sess_data*)* @sess_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sess_free_buffer(%struct.sess_data* %0) #0 {
  %2 = alloca %struct.sess_data*, align 8
  store %struct.sess_data* %0, %struct.sess_data** %2, align 8
  %3 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %4 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %3, i32 0, i32 1
  %5 = load i32, i32* %4, align 8
  %6 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %7 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %6, i32 0, i32 0
  %8 = load %struct.TYPE_2__*, %struct.TYPE_2__** %7, align 8
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i64 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free_rsp_buf(i32 %5, i32 %11)
  %13 = load i32, i32* @CIFS_NO_BUFFER, align 4
  %14 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %15 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %14, i32 0, i32 1
  store i32 %13, i32* %15, align 8
  %16 = load %struct.sess_data*, %struct.sess_data** %2, align 8
  %17 = getelementptr inbounds %struct.sess_data, %struct.sess_data* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i64 2
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  ret void
}

declare dso_local i32 @free_rsp_buf(i32, i32) #1

declare dso_local i32 @kfree(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
