; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writedata_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifssmb.c_cifs_writedata_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cifs_writedata = type { i32 }
%struct.page = type { i32 }

@GFP_NOFS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.cifs_writedata* @cifs_writedata_alloc(i32 %0, i32 %1) #0 {
  %3 = alloca %struct.cifs_writedata*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.page**, align 8
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* %4, align 4
  %8 = load i32, i32* @GFP_NOFS, align 4
  %9 = call %struct.page** @kcalloc(i32 %7, i32 8, i32 %8)
  store %struct.page** %9, %struct.page*** %6, align 8
  %10 = load %struct.page**, %struct.page*** %6, align 8
  %11 = icmp ne %struct.page** %10, null
  br i1 %11, label %12, label %16

12:                                               ; preds = %2
  %13 = load %struct.page**, %struct.page*** %6, align 8
  %14 = load i32, i32* %5, align 4
  %15 = call %struct.cifs_writedata* @cifs_writedata_direct_alloc(%struct.page** %13, i32 %14)
  store %struct.cifs_writedata* %15, %struct.cifs_writedata** %3, align 8
  br label %17

16:                                               ; preds = %2
  store %struct.cifs_writedata* null, %struct.cifs_writedata** %3, align 8
  br label %17

17:                                               ; preds = %16, %12
  %18 = load %struct.cifs_writedata*, %struct.cifs_writedata** %3, align 8
  ret %struct.cifs_writedata* %18
}

declare dso_local %struct.page** @kcalloc(i32, i32, i32) #1

declare dso_local %struct.cifs_writedata* @cifs_writedata_direct_alloc(%struct.page**, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
