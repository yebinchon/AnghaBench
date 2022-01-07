
typedef unsigned long size_t;
typedef long intptr_t; typedef unsigned long uintptr_t;
typedef long scalar_t__;

typedef int bool;






struct bfad_s {int dummy; } ;


 int EINVAL ;
 int bfad_iocmd_ablk_optrom (struct bfad_s*,unsigned int,void*) ;
 int bfad_iocmd_adapter_cfg_mode (struct bfad_s*,void*) ;
 int bfad_iocmd_boot_cfg (struct bfad_s*,void*) ;
 int bfad_iocmd_boot_query (struct bfad_s*,void*) ;
 int bfad_iocmd_cee_attr (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_cee_get_stats (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_cee_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_cfg_fcpim (struct bfad_s*,void*) ;
 int bfad_iocmd_cfg_trunk (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_debug_ctl (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_debug_fw_core (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_diag_beacon_lport (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_dport_disable (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_dport_enable (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_dport_show (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_dport_start (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_fwping (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_lb_stat (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_led (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_loopback (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_memtest (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_queuetest (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_sfp (struct bfad_s*,void*) ;
 int bfad_iocmd_diag_temp (struct bfad_s*,void*) ;
 int bfad_iocmd_ethboot_cfg (struct bfad_s*,void*) ;
 int bfad_iocmd_ethboot_query (struct bfad_s*,void*) ;
 int bfad_iocmd_faa_query (struct bfad_s*,void*) ;
 int bfad_iocmd_fabric_get_lports (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_fcpim_cfg_lunmask (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_fcpim_cfg_profile (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_fcpim_clr_modstats (struct bfad_s*,void*) ;
 int bfad_iocmd_fcpim_get_del_itn_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_fcpim_get_modstats (struct bfad_s*,void*) ;
 int bfad_iocmd_fcpim_lunmask_query (struct bfad_s*,void*) ;
 int bfad_iocmd_fcpim_throttle_query (struct bfad_s*,void*) ;
 int bfad_iocmd_fcpim_throttle_set (struct bfad_s*,void*) ;
 int bfad_iocmd_fcport_disable (struct bfad_s*,void*) ;
 int bfad_iocmd_fcport_enable (struct bfad_s*,void*) ;
 int bfad_iocmd_fcport_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_fcport_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_flash_erase_part (struct bfad_s*,void*) ;
 int bfad_iocmd_flash_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_flash_read_part (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_flash_update_part (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_fruvpd_get_max_size (struct bfad_s*,void*) ;
 int bfad_iocmd_fruvpd_read (struct bfad_s*,void*) ;
 int bfad_iocmd_fruvpd_update (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_disable (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_enable (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_fw_sig_inv (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_get_fwstats (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_ioc_get_info (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_get_pcifn_cfg (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_ioc_reset_stats (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_ioc_set_name (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_iocfc_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_iocfc_set_intr (struct bfad_s*,void*) ;
 int bfad_iocmd_itnim_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_itnim_get_ioprofile (struct bfad_s*,void*) ;
 int bfad_iocmd_itnim_get_iostats (struct bfad_s*,void*) ;
 int bfad_iocmd_itnim_get_itnstats (struct bfad_s*,void*) ;
 int bfad_iocmd_itnim_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_lport_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_lport_get_iostats (struct bfad_s*,void*) ;
 int bfad_iocmd_lport_get_rports (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_lport_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_lport_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_lunmask (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_pcifn_bw (struct bfad_s*,void*) ;
 int bfad_iocmd_pcifn_create (struct bfad_s*,void*) ;
 int bfad_iocmd_pcifn_delete (struct bfad_s*,void*) ;
 int bfad_iocmd_phy_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_phy_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_phy_read (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_phy_update (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_porglog_ctl (struct bfad_s*,void*) ;
 int bfad_iocmd_porglog_get (struct bfad_s*,void*) ;
 int bfad_iocmd_port_cfg_bbcr (struct bfad_s*,unsigned int,void*) ;
 int bfad_iocmd_port_cfg_maxfrsize (struct bfad_s*,void*) ;
 int bfad_iocmd_port_cfg_mode (struct bfad_s*,void*) ;
 int bfad_iocmd_port_disable (struct bfad_s*,void*) ;
 int bfad_iocmd_port_enable (struct bfad_s*,void*) ;
 int bfad_iocmd_port_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_port_get_bbcr_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_port_get_stats (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_port_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_preboot_query (struct bfad_s*,void*) ;
 int bfad_iocmd_qos (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_qos_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_qos_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_qos_get_vc_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_qos_reset_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_qos_set_bw (struct bfad_s*,void*) ;
 int bfad_iocmd_ratelim (struct bfad_s*,unsigned int,void*) ;
 int bfad_iocmd_ratelim_speed (struct bfad_s*,unsigned int,void*) ;
 int bfad_iocmd_rport_clr_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_rport_get_addr (struct bfad_s*,void*) ;
 int bfad_iocmd_rport_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_rport_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_rport_set_speed (struct bfad_s*,void*) ;
 int bfad_iocmd_set_port_cfg (struct bfad_s*,void*,unsigned int) ;
 int bfad_iocmd_sfp_media (struct bfad_s*,void*) ;
 int bfad_iocmd_sfp_speed (struct bfad_s*,void*) ;
 int bfad_iocmd_tfru_read (struct bfad_s*,void*) ;
 int bfad_iocmd_tfru_write (struct bfad_s*,void*) ;
 int bfad_iocmd_trunk_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_vf_clr_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_vf_get_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_vhba_query (struct bfad_s*,void*) ;
 int bfad_iocmd_vport_clr_stats (struct bfad_s*,void*) ;
 int bfad_iocmd_vport_get_attr (struct bfad_s*,void*) ;
 int bfad_iocmd_vport_get_stats (struct bfad_s*,void*) ;

__attribute__((used)) static int
bfad_iocmd_handler(struct bfad_s *bfad, unsigned int cmd, void *iocmd,
  unsigned int payload_len)
{
 int rc = -EINVAL;

 switch (cmd) {
 case 198:
  rc = bfad_iocmd_ioc_enable(bfad, iocmd);
  break;
 case 199:
  rc = bfad_iocmd_ioc_disable(bfad, iocmd);
  break;
 case 194:
  rc = bfad_iocmd_ioc_get_info(bfad, iocmd);
  break;
 case 196:
  rc = bfad_iocmd_ioc_get_attr(bfad, iocmd);
  break;
 case 193:
  rc = bfad_iocmd_ioc_get_stats(bfad, iocmd);
  break;
 case 195:
  rc = bfad_iocmd_ioc_get_fwstats(bfad, iocmd, payload_len);
  break;
 case 190:
 case 191:
  rc = bfad_iocmd_ioc_reset_stats(bfad, iocmd, cmd);
  break;
 case 189:
 case 188:
  rc = bfad_iocmd_ioc_set_name(bfad, iocmd, cmd);
  break;
 case 201:
  rc = bfad_iocmd_iocfc_get_attr(bfad, iocmd);
  break;
 case 200:
  rc = bfad_iocmd_iocfc_set_intr(bfad, iocmd);
  break;
 case 160:
  rc = bfad_iocmd_port_enable(bfad, iocmd);
  break;
 case 161:
  rc = bfad_iocmd_port_disable(bfad, iocmd);
  break;
 case 159:
  rc = bfad_iocmd_port_get_attr(bfad, iocmd);
  break;
 case 158:
  rc = bfad_iocmd_port_get_stats(bfad, iocmd, payload_len);
  break;
 case 157:
  rc = bfad_iocmd_port_reset_stats(bfad, iocmd);
  break;
 case 163:
 case 164:
 case 167:
 case 162:
  rc = bfad_iocmd_set_port_cfg(bfad, iocmd, cmd);
  break;
 case 166:
  rc = bfad_iocmd_port_cfg_maxfrsize(bfad, iocmd);
  break;
 case 169:
 case 170:
  rc = bfad_iocmd_port_cfg_bbcr(bfad, cmd, iocmd);
  break;
 case 168:
  rc = bfad_iocmd_port_get_bbcr_attr(bfad, iocmd);
  break;
 case 182:
  rc = bfad_iocmd_lport_get_attr(bfad, iocmd);
  break;
 case 179:
  rc = bfad_iocmd_lport_get_stats(bfad, iocmd);
  break;
 case 178:
  rc = bfad_iocmd_lport_reset_stats(bfad, iocmd);
  break;
 case 181:
  rc = bfad_iocmd_lport_get_iostats(bfad, iocmd);
  break;
 case 180:
  rc = bfad_iocmd_lport_get_rports(bfad, iocmd, payload_len);
  break;
 case 144:
  rc = bfad_iocmd_rport_get_attr(bfad, iocmd);
  break;
 case 145:
  rc = bfad_iocmd_rport_get_addr(bfad, iocmd);
  break;
 case 143:
  rc = bfad_iocmd_rport_get_stats(bfad, iocmd);
  break;
 case 142:
  rc = bfad_iocmd_rport_clr_stats(bfad, iocmd);
  break;
 case 141:
  rc = bfad_iocmd_rport_set_speed(bfad, iocmd);
  break;
 case 130:
  rc = bfad_iocmd_vport_get_attr(bfad, iocmd);
  break;
 case 129:
  rc = bfad_iocmd_vport_get_stats(bfad, iocmd);
  break;
 case 128:
  rc = bfad_iocmd_vport_clr_stats(bfad, iocmd);
  break;
 case 229:
  rc = bfad_iocmd_fabric_get_lports(bfad, iocmd, payload_len);
  break;
 case 146:
 case 147:
  rc = bfad_iocmd_ratelim(bfad, cmd, iocmd);
  break;
 case 148:
  rc = bfad_iocmd_ratelim_speed(bfad, cmd, iocmd);
  break;
 case 227:
  rc = bfad_iocmd_cfg_fcpim(bfad, iocmd);
  break;
 case 220:
  rc = bfad_iocmd_fcpim_get_modstats(bfad, iocmd);
  break;
 case 219:
  rc = bfad_iocmd_fcpim_clr_modstats(bfad, iocmd);
  break;
 case 228:
  rc = bfad_iocmd_fcpim_get_del_itn_stats(bfad, iocmd);
  break;
 case 187:
  rc = bfad_iocmd_itnim_get_attr(bfad, iocmd);
  break;
 case 185:
  rc = bfad_iocmd_itnim_get_iostats(bfad, iocmd);
  break;
 case 183:
  rc = bfad_iocmd_itnim_reset_stats(bfad, iocmd);
  break;
 case 184:
  rc = bfad_iocmd_itnim_get_itnstats(bfad, iocmd);
  break;
 case 213:
  rc = bfad_iocmd_fcport_enable(bfad, iocmd);
  break;
 case 214:
  rc = bfad_iocmd_fcport_disable(bfad, iocmd);
  break;
 case 192:
  rc = bfad_iocmd_ioc_get_pcifn_cfg(bfad, iocmd);
  break;
 case 197:
  rc = bfad_iocmd_ioc_fw_sig_inv(bfad, iocmd);
  break;
 case 176:
  rc = bfad_iocmd_pcifn_create(bfad, iocmd);
  break;
 case 175:
  rc = bfad_iocmd_pcifn_delete(bfad, iocmd);
  break;
 case 177:
  rc = bfad_iocmd_pcifn_bw(bfad, iocmd);
  break;
 case 258:
  rc = bfad_iocmd_adapter_cfg_mode(bfad, iocmd);
  break;
 case 165:
  rc = bfad_iocmd_port_cfg_mode(bfad, iocmd);
  break;
 case 209:
 case 210:
  rc = bfad_iocmd_ablk_optrom(bfad, cmd, iocmd);
  break;
 case 230:
  rc = bfad_iocmd_faa_query(bfad, iocmd);
  break;
 case 255:
  rc = bfad_iocmd_cee_attr(bfad, iocmd, payload_len);
  break;
 case 254:
  rc = bfad_iocmd_cee_get_stats(bfad, iocmd, payload_len);
  break;
 case 253:
  rc = bfad_iocmd_cee_reset_stats(bfad, iocmd);
  break;
 case 140:
  rc = bfad_iocmd_sfp_media(bfad, iocmd);
   break;
 case 139:
  rc = bfad_iocmd_sfp_speed(bfad, iocmd);
  break;
 case 207:
  rc = bfad_iocmd_flash_get_attr(bfad, iocmd);
  break;
 case 208:
  rc = bfad_iocmd_flash_erase_part(bfad, iocmd);
  break;
 case 205:
  rc = bfad_iocmd_flash_update_part(bfad, iocmd, payload_len);
  break;
 case 206:
  rc = bfad_iocmd_flash_read_part(bfad, iocmd, payload_len);
  break;
 case 233:
  rc = bfad_iocmd_diag_temp(bfad, iocmd);
  break;
 case 236:
  rc = bfad_iocmd_diag_memtest(bfad, iocmd);
  break;
 case 237:
  rc = bfad_iocmd_diag_loopback(bfad, iocmd);
  break;
 case 240:
  rc = bfad_iocmd_diag_fwping(bfad, iocmd);
  break;
 case 235:
  rc = bfad_iocmd_diag_queuetest(bfad, iocmd);
  break;
 case 234:
  rc = bfad_iocmd_diag_sfp(bfad, iocmd);
  break;
 case 238:
  rc = bfad_iocmd_diag_led(bfad, iocmd);
  break;
 case 245:
  rc = bfad_iocmd_diag_beacon_lport(bfad, iocmd);
  break;
 case 239:
  rc = bfad_iocmd_diag_lb_stat(bfad, iocmd);
  break;
 case 243:
  rc = bfad_iocmd_diag_dport_enable(bfad, iocmd);
  break;
 case 244:
  rc = bfad_iocmd_diag_dport_disable(bfad, iocmd);
  break;
 case 242:
  rc = bfad_iocmd_diag_dport_show(bfad, iocmd);
  break;
 case 241:
  rc = bfad_iocmd_diag_dport_start(bfad, iocmd);
  break;
 case 174:
  rc = bfad_iocmd_phy_get_attr(bfad, iocmd);
  break;
 case 173:
  rc = bfad_iocmd_phy_get_stats(bfad, iocmd);
  break;
 case 171:
  rc = bfad_iocmd_phy_update(bfad, iocmd, payload_len);
  break;
 case 172:
  rc = bfad_iocmd_phy_read(bfad, iocmd, payload_len);
  break;
 case 131:
  rc = bfad_iocmd_vhba_query(bfad, iocmd);
  break;
 case 250:
  rc = bfad_iocmd_porglog_get(bfad, iocmd);
  break;
 case 252:
  rc = bfad_iocmd_debug_fw_core(bfad, iocmd, payload_len);
  break;
 case 251:
 case 249:
 case 247:
 case 246:
  rc = bfad_iocmd_debug_ctl(bfad, iocmd, cmd);
  break;
 case 248:
  rc = bfad_iocmd_porglog_ctl(bfad, iocmd);
  break;
 case 217:
 case 218:
  rc = bfad_iocmd_fcpim_cfg_profile(bfad, iocmd, cmd);
  break;
 case 186:
  rc = bfad_iocmd_itnim_get_ioprofile(bfad, iocmd);
  break;
 case 212:
  rc = bfad_iocmd_fcport_get_stats(bfad, iocmd);
  break;
 case 211:
  rc = bfad_iocmd_fcport_reset_stats(bfad, iocmd);
  break;
 case 257:
  rc = bfad_iocmd_boot_cfg(bfad, iocmd);
  break;
 case 256:
  rc = bfad_iocmd_boot_query(bfad, iocmd);
  break;
 case 156:
  rc = bfad_iocmd_preboot_query(bfad, iocmd);
  break;
 case 232:
  rc = bfad_iocmd_ethboot_cfg(bfad, iocmd);
  break;
 case 231:
  rc = bfad_iocmd_ethboot_query(bfad, iocmd);
  break;
 case 135:
 case 136:
  rc = bfad_iocmd_cfg_trunk(bfad, iocmd, cmd);
  break;
 case 134:
  rc = bfad_iocmd_trunk_get_attr(bfad, iocmd);
  break;
 case 154:
 case 155:
  rc = bfad_iocmd_qos(bfad, iocmd, cmd);
  break;
 case 153:
  rc = bfad_iocmd_qos_get_attr(bfad, iocmd);
  break;
 case 151:
  rc = bfad_iocmd_qos_get_vc_attr(bfad, iocmd);
  break;
 case 152:
  rc = bfad_iocmd_qos_get_stats(bfad, iocmd);
  break;
 case 150:
  rc = bfad_iocmd_qos_reset_stats(bfad, iocmd);
  break;
 case 149:
  rc = bfad_iocmd_qos_set_bw(bfad, iocmd);
  break;
 case 133:
  rc = bfad_iocmd_vf_get_stats(bfad, iocmd);
  break;
 case 132:
  rc = bfad_iocmd_vf_clr_stats(bfad, iocmd);
  break;
 case 222:
 case 223:
 case 225:
  rc = bfad_iocmd_lunmask(bfad, iocmd, cmd);
  break;
 case 221:
  rc = bfad_iocmd_fcpim_lunmask_query(bfad, iocmd);
  break;
 case 226:
 case 224:
  rc = bfad_iocmd_fcpim_cfg_lunmask(bfad, iocmd, cmd);
  break;
 case 216:
  rc = bfad_iocmd_fcpim_throttle_query(bfad, iocmd);
  break;
 case 215:
  rc = bfad_iocmd_fcpim_throttle_set(bfad, iocmd);
  break;

 case 138:
  rc = bfad_iocmd_tfru_read(bfad, iocmd);
  break;
 case 137:
  rc = bfad_iocmd_tfru_write(bfad, iocmd);
  break;

 case 203:
  rc = bfad_iocmd_fruvpd_read(bfad, iocmd);
  break;
 case 202:
  rc = bfad_iocmd_fruvpd_update(bfad, iocmd);
  break;
 case 204:
  rc = bfad_iocmd_fruvpd_get_max_size(bfad, iocmd);
  break;
 default:
  rc = -EINVAL;
  break;
 }
 return rc;
}
