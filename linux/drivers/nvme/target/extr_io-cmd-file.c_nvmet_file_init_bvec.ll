; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_init_bvec.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/target/extr_io-cmd-file.c_nvmet_file_init_bvec.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.bio_vec = type { i32, i32, i32 }
%struct.scatterlist = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.bio_vec*, %struct.scatterlist*)* @nvmet_file_init_bvec to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nvmet_file_init_bvec(%struct.bio_vec* %0, %struct.scatterlist* %1) #0 {
  %3 = alloca %struct.bio_vec*, align 8
  %4 = alloca %struct.scatterlist*, align 8
  store %struct.bio_vec* %0, %struct.bio_vec** %3, align 8
  store %struct.scatterlist* %1, %struct.scatterlist** %4, align 8
  %5 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %6 = call i32 @sg_page(%struct.scatterlist* %5)
  %7 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %8 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %7, i32 0, i32 2
  store i32 %6, i32* %8, align 4
  %9 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %10 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %9, i32 0, i32 1
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %13 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %12, i32 0, i32 1
  store i32 %11, i32* %13, align 4
  %14 = load %struct.scatterlist*, %struct.scatterlist** %4, align 8
  %15 = getelementptr inbounds %struct.scatterlist, %struct.scatterlist* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.bio_vec*, %struct.bio_vec** %3, align 8
  %18 = getelementptr inbounds %struct.bio_vec, %struct.bio_vec* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

declare dso_local i32 @sg_page(%struct.scatterlist*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
