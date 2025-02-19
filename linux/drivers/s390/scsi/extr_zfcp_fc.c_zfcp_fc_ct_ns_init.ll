; ModuleID = '/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_ns_init.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/s390/scsi/extr_zfcp_fc.c_zfcp_fc_ct_ns_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fc_ct_hdr = type { i8*, i8*, i32, i32, i32 }

@FC_CT_REV = common dso_local global i32 0, align 4
@FC_FST_DIR = common dso_local global i32 0, align 4
@FC_NS_SUBTYPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fc_ct_hdr*, i32, i32)* @zfcp_fc_ct_ns_init to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @zfcp_fc_ct_ns_init(%struct.fc_ct_hdr* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.fc_ct_hdr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.fc_ct_hdr* %0, %struct.fc_ct_hdr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %7 = load i32, i32* @FC_CT_REV, align 4
  %8 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %4, align 8
  %9 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %8, i32 0, i32 4
  store i32 %7, i32* %9, align 8
  %10 = load i32, i32* @FC_FST_DIR, align 4
  %11 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %4, align 8
  %12 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %11, i32 0, i32 3
  store i32 %10, i32* %12, align 4
  %13 = load i32, i32* @FC_NS_SUBTYPE, align 4
  %14 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %4, align 8
  %15 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load i32, i32* %5, align 4
  %17 = call i8* @cpu_to_be16(i32 %16)
  %18 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %4, align 8
  %19 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %18, i32 0, i32 1
  store i8* %17, i8** %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = sdiv i32 %20, 4
  %22 = call i8* @cpu_to_be16(i32 %21)
  %23 = load %struct.fc_ct_hdr*, %struct.fc_ct_hdr** %4, align 8
  %24 = getelementptr inbounds %struct.fc_ct_hdr, %struct.fc_ct_hdr* %23, i32 0, i32 0
  store i8* %22, i8** %24, align 8
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
