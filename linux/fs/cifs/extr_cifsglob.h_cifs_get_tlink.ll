; ModuleID = '/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_cifs_get_tlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/cifs/extr_cifsglob.h_cifs_get_tlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tcon_link = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.tcon_link* (%struct.tcon_link*)* @cifs_get_tlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.tcon_link* @cifs_get_tlink(%struct.tcon_link* %0) #0 {
  %2 = alloca %struct.tcon_link*, align 8
  store %struct.tcon_link* %0, %struct.tcon_link** %2, align 8
  %3 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %4 = icmp ne %struct.tcon_link* %3, null
  br i1 %4, label %5, label %13

5:                                                ; preds = %1
  %6 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %7 = call i32 @IS_ERR(%struct.tcon_link* %6)
  %8 = icmp ne i32 %7, 0
  br i1 %8, label %13, label %9

9:                                                ; preds = %5
  %10 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  %11 = getelementptr inbounds %struct.tcon_link, %struct.tcon_link* %10, i32 0, i32 0
  %12 = call i32 @atomic_inc(i32* %11)
  br label %13

13:                                               ; preds = %9, %5, %1
  %14 = load %struct.tcon_link*, %struct.tcon_link** %2, align 8
  ret %struct.tcon_link* %14
}

declare dso_local i32 @IS_ERR(%struct.tcon_link*) #1

declare dso_local i32 @atomic_inc(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
