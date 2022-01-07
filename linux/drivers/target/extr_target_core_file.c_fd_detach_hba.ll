; ModuleID = '/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_detach_hba.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/target/extr_target_core_file.c_fd_detach_hba.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.se_hba = type { %struct.fd_host*, i32 }
%struct.fd_host = type { i32 }

@.str = private unnamed_addr constant [65 x i8] c"CORE_HBA[%d] - Detached FILEIO HBA: %u from Generic Target Core\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.se_hba*)* @fd_detach_hba to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fd_detach_hba(%struct.se_hba* %0) #0 {
  %2 = alloca %struct.se_hba*, align 8
  %3 = alloca %struct.fd_host*, align 8
  store %struct.se_hba* %0, %struct.se_hba** %2, align 8
  %4 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %5 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %4, i32 0, i32 0
  %6 = load %struct.fd_host*, %struct.fd_host** %5, align 8
  store %struct.fd_host* %6, %struct.fd_host** %3, align 8
  %7 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %8 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.fd_host*, %struct.fd_host** %3, align 8
  %11 = getelementptr inbounds %struct.fd_host, %struct.fd_host* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @pr_debug(i8* getelementptr inbounds ([65 x i8], [65 x i8]* @.str, i64 0, i64 0), i32 %9, i32 %12)
  %14 = load %struct.fd_host*, %struct.fd_host** %3, align 8
  %15 = call i32 @kfree(%struct.fd_host* %14)
  %16 = load %struct.se_hba*, %struct.se_hba** %2, align 8
  %17 = getelementptr inbounds %struct.se_hba, %struct.se_hba* %16, i32 0, i32 0
  store %struct.fd_host* null, %struct.fd_host** %17, align 8
  ret void
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @kfree(%struct.fd_host*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
