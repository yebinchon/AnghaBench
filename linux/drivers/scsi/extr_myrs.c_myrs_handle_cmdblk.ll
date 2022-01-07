; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_handle_cmdblk.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/extr_myrs.c_myrs_handle_cmdblk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.myrs_hba = type { i32 }
%struct.myrs_cmdblk = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.myrs_hba*, %struct.myrs_cmdblk*)* @myrs_handle_cmdblk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @myrs_handle_cmdblk(%struct.myrs_hba* %0, %struct.myrs_cmdblk* %1) #0 {
  %3 = alloca %struct.myrs_hba*, align 8
  %4 = alloca %struct.myrs_cmdblk*, align 8
  store %struct.myrs_hba* %0, %struct.myrs_hba** %3, align 8
  store %struct.myrs_cmdblk* %1, %struct.myrs_cmdblk** %4, align 8
  %5 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %6 = icmp ne %struct.myrs_cmdblk* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %2
  br label %20

8:                                                ; preds = %2
  %9 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %10 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %15 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @complete(i32* %16)
  %18 = load %struct.myrs_cmdblk*, %struct.myrs_cmdblk** %4, align 8
  %19 = getelementptr inbounds %struct.myrs_cmdblk, %struct.myrs_cmdblk* %18, i32 0, i32 0
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %7, %13, %8
  ret void
}

declare dso_local i32 @complete(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
