; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_nls.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsfs.c_cifs_show_nls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.nls_table = type { i32 }

@.str = private unnamed_addr constant [14 x i8] c",iocharset=%s\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.seq_file*, %struct.nls_table*)* @cifs_show_nls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @cifs_show_nls(%struct.seq_file* %0, %struct.nls_table* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.nls_table*, align 8
  %5 = alloca %struct.nls_table*, align 8
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.nls_table* %1, %struct.nls_table** %4, align 8
  %6 = call %struct.nls_table* (...) @load_nls_default()
  store %struct.nls_table* %6, %struct.nls_table** %5, align 8
  %7 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %8 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %9 = icmp ne %struct.nls_table* %7, %8
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %12 = load %struct.nls_table*, %struct.nls_table** %4, align 8
  %13 = getelementptr inbounds %struct.nls_table, %struct.nls_table* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @seq_printf(%struct.seq_file* %11, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0), i32 %14)
  br label %16

16:                                               ; preds = %10, %2
  %17 = load %struct.nls_table*, %struct.nls_table** %5, align 8
  %18 = call i32 @unload_nls(%struct.nls_table* %17)
  ret void
}

declare dso_local %struct.nls_table* @load_nls_default(...) #1

declare dso_local i32 @seq_printf(%struct.seq_file*, i8*, i32) #1

declare dso_local i32 @unload_nls(%struct.nls_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
