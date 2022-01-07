; ModuleID = '/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_set_rcom_config.c'
source_filename = "/home/carl/AnghaBench/linux/fs/dlm/extr_rcom.c_set_rcom_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dlm_ls = type { i32, i32, i32, i32 }
%struct.rcom_config = type { i8*, i8*, i8*, i8*, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dlm_ls*, %struct.rcom_config*, i32)* @set_rcom_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_rcom_config(%struct.dlm_ls* %0, %struct.rcom_config* %1, i32 %2) #0 {
  %4 = alloca %struct.dlm_ls*, align 8
  %5 = alloca %struct.rcom_config*, align 8
  %6 = alloca i32, align 4
  store %struct.dlm_ls* %0, %struct.dlm_ls** %4, align 8
  store %struct.rcom_config* %1, %struct.rcom_config** %5, align 8
  store i32 %2, i32* %6, align 4
  %7 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %8 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %7, i32 0, i32 3
  %9 = load i32, i32* %8, align 4
  %10 = call i8* @cpu_to_le32(i32 %9)
  %11 = load %struct.rcom_config*, %struct.rcom_config** %5, align 8
  %12 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %11, i32 0, i32 4
  store i8* %10, i8** %12, align 8
  %13 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %14 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %13, i32 0, i32 2
  %15 = load i32, i32* %14, align 4
  %16 = call i8* @cpu_to_le32(i32 %15)
  %17 = load %struct.rcom_config*, %struct.rcom_config** %5, align 8
  %18 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %17, i32 0, i32 3
  store i8* %16, i8** %18, align 8
  %19 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %20 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_le16(i32 %21)
  %23 = load %struct.rcom_config*, %struct.rcom_config** %5, align 8
  %24 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %23, i32 0, i32 2
  store i8* %22, i8** %24, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i8* @cpu_to_le16(i32 %25)
  %27 = load %struct.rcom_config*, %struct.rcom_config** %5, align 8
  %28 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %27, i32 0, i32 1
  store i8* %26, i8** %28, align 8
  %29 = load %struct.dlm_ls*, %struct.dlm_ls** %4, align 8
  %30 = getelementptr inbounds %struct.dlm_ls, %struct.dlm_ls* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_le32(i32 %31)
  %33 = load %struct.rcom_config*, %struct.rcom_config** %5, align 8
  %34 = getelementptr inbounds %struct.rcom_config, %struct.rcom_config* %33, i32 0, i32 0
  store i8* %32, i8** %34, align 8
  ret void
}

declare dso_local i8* @cpu_to_le32(i32) #1

declare dso_local i8* @cpu_to_le16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
