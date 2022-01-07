; ModuleID = '/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_setup_20.c'
source_filename = "/home/carl/AnghaBench/linux/drivers/nvme/host/extr_lightnvm.c_nvme_nvm_setup_20.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nvme_nvm_id20 = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.nvm_geo = type { i32, i32, i32, i32, i32, i32, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i32, i32 }

@NVM_OCSSD_SPEC_20 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nvme_nvm_id20*, %struct.nvm_geo*)* @nvme_nvm_setup_20 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nvme_nvm_setup_20(%struct.nvme_nvm_id20* %0, %struct.nvm_geo* %1) #0 {
  %3 = alloca %struct.nvme_nvm_id20*, align 8
  %4 = alloca %struct.nvm_geo*, align 8
  store %struct.nvme_nvm_id20* %0, %struct.nvme_nvm_id20** %3, align 8
  store %struct.nvm_geo* %1, %struct.nvm_geo** %4, align 8
  %5 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %6 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %5, i32 0, i32 17
  %7 = load i32, i32* %6, align 4
  %8 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %9 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %8, i32 0, i32 21
  store i32 %7, i32* %9, align 8
  %10 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %11 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %10, i32 0, i32 16
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %14 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %13, i32 0, i32 20
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* @NVM_OCSSD_SPEC_20, align 4
  %16 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %17 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %16, i32 0, i32 19
  store i32 %15, i32* %17, align 8
  %18 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %19 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @le16_to_cpu(i32 %20)
  %22 = ptrtoint i8* %21 to i32
  %23 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %24 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 8
  %25 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %26 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @le16_to_cpu(i32 %27)
  %29 = ptrtoint i8* %28 to i32
  %30 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %31 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %30, i32 0, i32 1
  store i32 %29, i32* %31, align 4
  %32 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %33 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %36 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = mul nsw i32 %34, %37
  %39 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %40 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %39, i32 0, i32 2
  store i32 %38, i32* %40, align 8
  %41 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %42 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %41, i32 0, i32 13
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @le32_to_cpu(i32 %43)
  %45 = ptrtoint i8* %44 to i32
  %46 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %47 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %46, i32 0, i32 3
  store i32 %45, i32* %47, align 4
  %48 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %49 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %48, i32 0, i32 12
  %50 = load i32, i32* %49, align 4
  %51 = call i8* @le32_to_cpu(i32 %50)
  %52 = ptrtoint i8* %51 to i32
  %53 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %54 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %53, i32 0, i32 4
  store i32 %52, i32* %54, align 8
  %55 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %56 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %59 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %58, i32 0, i32 3
  %60 = load i32, i32* %59, align 4
  %61 = mul nsw i32 %57, %60
  %62 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %63 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %62, i32 0, i32 5
  store i32 %61, i32* %63, align 4
  %64 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %65 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %64, i32 0, i32 4
  %66 = load i32, i32* %65, align 8
  %67 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %68 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %67, i32 0, i32 5
  %69 = load i32, i32* %68, align 4
  %70 = mul nsw i32 %66, %69
  %71 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %72 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %71, i32 0, i32 6
  store i32 %70, i32* %72, align 8
  %73 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %74 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %73, i32 0, i32 11
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @le32_to_cpu(i32 %75)
  %77 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %78 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %77, i32 0, i32 18
  store i8* %76, i8** %78, align 8
  %79 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %80 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %79, i32 0, i32 10
  %81 = load i32, i32* %80, align 4
  %82 = call i8* @le32_to_cpu(i32 %81)
  %83 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %84 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %83, i32 0, i32 17
  store i8* %82, i8** %84, align 8
  %85 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %86 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %85, i32 0, i32 9
  %87 = load i32, i32* %86, align 4
  %88 = call i8* @le32_to_cpu(i32 %87)
  %89 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %90 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %89, i32 0, i32 16
  store i8* %88, i8** %90, align 8
  %91 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %92 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %91, i32 0, i32 8
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @le32_to_cpu(i32 %93)
  %95 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %96 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %95, i32 0, i32 15
  store i8* %94, i8** %96, align 8
  %97 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %98 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %97, i32 0, i32 7
  %99 = load i32, i32* %98, align 4
  %100 = call i8* @le32_to_cpu(i32 %99)
  %101 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %102 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %101, i32 0, i32 14
  store i8* %100, i8** %102, align 8
  %103 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %104 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %103, i32 0, i32 6
  %105 = load i32, i32* %104, align 4
  %106 = call i8* @le32_to_cpu(i32 %105)
  %107 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %108 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %107, i32 0, i32 13
  store i8* %106, i8** %108, align 8
  %109 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %110 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %109, i32 0, i32 5
  %111 = load i32, i32* %110, align 4
  %112 = call i8* @le32_to_cpu(i32 %111)
  %113 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %114 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %113, i32 0, i32 12
  store i8* %112, i8** %114, align 8
  %115 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %116 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %115, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = call i8* @le32_to_cpu(i32 %117)
  %119 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %120 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %119, i32 0, i32 11
  store i8* %118, i8** %120, align 8
  %121 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %122 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = call i8* @le32_to_cpu(i32 %123)
  %125 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %126 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %125, i32 0, i32 10
  store i8* %124, i8** %126, align 8
  %127 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %128 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %127, i32 0, i32 2
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @le32_to_cpu(i32 %129)
  %131 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %132 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %131, i32 0, i32 9
  store i8* %130, i8** %132, align 8
  %133 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %134 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %133, i32 0, i32 1
  %135 = load i32, i32* %134, align 4
  %136 = call i8* @le32_to_cpu(i32 %135)
  %137 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %138 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %137, i32 0, i32 8
  store i8* %136, i8** %138, align 8
  %139 = load %struct.nvm_geo*, %struct.nvm_geo** %4, align 8
  %140 = getelementptr inbounds %struct.nvm_geo, %struct.nvm_geo* %139, i32 0, i32 7
  %141 = load %struct.nvme_nvm_id20*, %struct.nvme_nvm_id20** %3, align 8
  %142 = getelementptr inbounds %struct.nvme_nvm_id20, %struct.nvme_nvm_id20* %141, i32 0, i32 0
  %143 = call i32 @nvme_nvm_set_addr_20(i32* %140, i32* %142)
  ret i32 0
}

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @le32_to_cpu(i32) #1

declare dso_local i32 @nvme_nvm_set_addr_20(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
