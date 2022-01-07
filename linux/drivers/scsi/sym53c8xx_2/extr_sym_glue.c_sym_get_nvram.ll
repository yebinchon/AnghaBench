; ModuleID = '/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_get_nvram.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/scsi/sym53c8xx_2/extr_sym_glue.c_sym_get_nvram.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sym_device = type { %struct.sym_nvram* }
%struct.sym_nvram = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sym_device*, %struct.sym_nvram*)* @sym_get_nvram to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sym_get_nvram(%struct.sym_device* %0, %struct.sym_nvram* %1) #0 {
  %3 = alloca %struct.sym_device*, align 8
  %4 = alloca %struct.sym_nvram*, align 8
  store %struct.sym_device* %0, %struct.sym_device** %3, align 8
  store %struct.sym_nvram* %1, %struct.sym_nvram** %4, align 8
  %5 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %6 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %7 = getelementptr inbounds %struct.sym_device, %struct.sym_device* %6, i32 0, i32 0
  store %struct.sym_nvram* %5, %struct.sym_nvram** %7, align 8
  %8 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %9 = getelementptr inbounds %struct.sym_nvram, %struct.sym_nvram* %8, i32 0, i32 0
  store i64 0, i64* %9, align 8
  %10 = load %struct.sym_device*, %struct.sym_device** %3, align 8
  %11 = load %struct.sym_nvram*, %struct.sym_nvram** %4, align 8
  %12 = call i32 @sym_read_nvram(%struct.sym_device* %10, %struct.sym_nvram* %11)
  ret void
}

declare dso_local i32 @sym_read_nvram(%struct.sym_device*, %struct.sym_nvram*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
